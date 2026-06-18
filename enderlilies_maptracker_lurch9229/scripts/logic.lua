function has(item, amount)
  local count = Tracker:ProviderCountForCode(item)
  amount = tonumber(amount)
  if not amount then
    return count > 0
  else
    return count == amount
  end
end

function getLocAccess(location)
  local obj = Tracker:FindObjectForCode(location)
  if obj == nil then
    print(string.format("Location %s doesn't exist !", location))
    return AccessibilityLevel.None
  end
  return obj.AccessibilityLevel
end

function canReachLoc(location)
  return getLocAccess(location) >= AccessibilityLevel.Normal
end

function getAccess(code, amount)
  if string.sub(code,1,1) == "@" then
    return getLocAccess(code)
  elseif has(code, amount) then
    return AccessibilityLevel.Normal
  else
    return AccessibilityLevel.None
  end
end

function isSpawn(location)
  return Tracker:FindObjectForCode("start_" .. location).Active
end

function canReachBEnd()
  return canReachLoc("@Abyss03Left")
end

function canGetAegisCurio()
  return canReachLoc("@Cathedral/Cathedral - Church_13 - Relic/Luminant Aegis Curio")
end

function toggleGoModeItem()
  local goMode = Tracker:FindObjectForCode("gomode")
  if goMode == nil then
    print("Couldn't find object gomode !")
    return
  end

  if canReachBEnd() then
    if not goMode.Active then
      goMode.Active = true
    end

    if canGetAegisCurio() then
      if (goMode.CurrentStage ~= 2) then
        goMode.CurrentStage = 2
      end
    else
      if (goMode.CurrentStage ~= 1) then
        goMode.CurrentStage = 1
      end
    end
  else
    if goMode.Active then
      goMode.Active = false
    end
  end
end

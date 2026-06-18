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

function finishBEnd()
  print("can reach b")
  return getLocAccess("@Abyss03Left") >= AccessibilityLevel.Normal
end

function toggleBEnd()
  local bEnd = Tracker:FindObjectForCode("gomode")
  print("toggle B")
  if finishBEnd() == true
  then
    print("b toggled on")
    bEnd.Active = true
    return Tracker:FindObjectForCode("Bend").Active
  end
end

function finishCEnd()
  print("toggle c")
  if finishBEnd() == true and has ("luminantcurio")
  then
  Tracker:FindObjectForCode("Cend").Active = true
  if Tracker:FindObjectForCode("gomode").CurrentStage <2 then
    Tracker:FindObjectForCode("gomode").CurrentStage = 2
  end
  end
end

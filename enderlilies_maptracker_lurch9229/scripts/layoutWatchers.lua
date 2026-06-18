spawnCodes = {
  "start_Start",
  "start_Cellar",
  "start_CathedralCloister",
  "start_SaintsPassage",
  "start_Crossroads",
  "start_CollapsedShack",
  "start_BridgeHead",
  "start_RuinedCastleCellar",
  "start_GuestChamber",
  "start_MaelstromRemparts",
  "start_BastionGates",
  "start_Courtyard",
  "start_SecondSpireChamber",
  "start_MonumentOfTheWind",
  "start_MourningHall",
  "start_DryadLake",
  "start_WitchsHermitage",
  "start_CovenHalls",
  "start_BottomOfTheWell",
  "start_Charnel",
  "start_Ossuary",
  "start_GreatHall",
  "start_Aqueduct",
  "start_Cells",
  "start_DarkChamber",
  "start_ExecutionGrounds",
  "start_Lab1",
  "start_Lab2",
}

function apLayoutChange()
  local aptablets = Tracker:FindObjectForCode("apLayout")
  if (string.find(Tracker.ActiveVariantUID, "map_tracker")) or
  (string.find(Tracker.ActiveVariantUID, "world_map")) then
    if aptablets.Active then
        Tracker:AddLayouts("layouts/item_grids_AP.json")
        Tracker:AddLayouts("layouts/broadcast_horizontal_AP.json")
    else
        Tracker:AddLayouts("layouts/item_grids_standard.json")
    end
  elseif (string.find(Tracker.ActiveVariantUID, "items_only")) then
    if aptablets.Active then
      Tracker:AddLayouts("layouts/items_only_AP.json")
      Tracker:AddLayouts("layouts/broadcast_horizontal_AP.json")
    else
      Tracker:AddLayouts("layouts/items_only.json")
    end
  elseif (string.find(Tracker.ActiveVariantUID, "minimal_items")) then
    if aptablets.Active then
      Tracker:AddLayouts("minimal_layout/items_minimal_AP.json")
      Tracker:AddLayouts("minimal_layout/broadcast_minimal_AP.json")
    else
      Tracker:AddLayouts("minimal_layout/items_minimal.json")
    end
  end
end

function unselectOtherStarts(code)
  if not Tracker:FindObjectForCode(code).Active then
    return
  end

  for _, startName in ipairs(spawnCodes) do
    if startName ~= code then
      local start = Tracker:FindObjectForCode(startName)
      if start ~= nil and start.Active then
        start.Active = false
      end
    end
  end
end

function toggleGoMode(code)
  if string.find(code, "gomode") then -- avoid gomode self activation loop
    return
  end

  if ENABLE_DEBUG_LOG then
    print("toggleGoMode called for code " .. code)
  end

  toggleGoModeItem()
end

ScriptHost:AddWatchForCode("useApLayout", "apLayout", apLayoutChange)

for _, tracked_spawn in ipairs(spawnCodes) do
    ScriptHost:AddWatchForCode(tracked_spawn, tracked_spawn, unselectOtherStarts)
end

-- TODO : We should probably only watch for progression codes only ?
ScriptHost:AddWatchForCode("goModeActivation", "*", toggleGoMode)
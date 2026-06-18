ScriptHost:LoadScript("scripts/autotracking/locationMapping.lua")

function dump_table(o, depth)
    if depth == nil then
        depth = 0
    end
    if type(o) == 'table' then
        local tabs = ('\t'):rep(depth)
        local tabs2 = ('\t'):rep(depth + 1)
        local s = '{\n'
        for k, v in pairs(o) do
            if type(k) ~= 'number' then
                k = '"' .. k .. '"'
            end
            s = s .. tabs2 .. '[' .. k .. '] = ' .. dump_table(v, depth + 1) .. ',\n'
        end
        return s .. tabs .. '}'
    else
        return tostring(o)
    end
end

--- Prints in the console all the locations that are in logic, and the count
--- /!\ Warning /!\ Currently doesn't count hosted items ! 
function printInLogicLocations()
    local reachableCount = 0
    print("Reachable locations :")

    for _, v in pairs(LOCATION_MAPPING) do
        if v[1] then
            local obj = Tracker:FindObjectForCode(v[1])
            if obj then
                if v[1]:sub(1, 1) == "@" then
                    if obj.AccessibilityLevel >= AccessibilityLevel.Normal then
                        if obj.AvailableChestCount > 0 then
                            print(string.format("%s : %d", v[1], obj.AvailableChestCount))
                            reachableCount = reachableCount + 1
                        end
                        -- reachableCount = reachableCount + obj.AvailableChestCount entries are duplicated when this is > 1 
                    end
                -- elseif not obj.Active then
                --     reachableCount = reachableCount + 1
                end
            end
        end
    end

    print("Count = " .. reachableCount)
end
--- @return boolean true if player has silva, double jump, air dash and verboten champion
function MAXJUMP()
  return has ("silva") and has ("djump") and has ("dodge2") and has ("verboten")
end

--- @return boolean true if player has any spirit that allows him to airstall
function AIRSTALL()
  return has ("umbral")
  or has ("fretia")
  or has ("testsubject")
  or has ("headless")
  or has ("gerrod")
  or has ("eleine")
  or has ("ulv")
  or has ("faden")
  or has ("hoenir")
  or has ("julius")
end

--- @return boolean true if player has at least 2 spirits that allow him to airstall
function AIRSTALL2()
  local has_airstall = false
  local items = { "umbral", "fretia", "testsubject", "headless", "gerrod", "eleine", "ulv", "faden", "hoenir", "julius"}
  for _, i in ipairs(items) do
    if has (i) then
      -- return true immediately when a second airstall is found
      if has_airstall then
        return true
      end
      
      has_airstall = true
    end
  end
  return false
end

--- @param location string the location to check. Should start with '@'
--- @return boolean true if the location is accessible to the player (sequence breaks included)
function hasLocGlitched(location)
  return getLocAccess(location) >= AccessibilityLevel.SequenceBreak
end

function Abyss02TopGlitched()
  return hasLocGlitched("@Abyss01Top") and CHARGE() and has("hammer") and has("aquatic") and has("hook") and 
  (
    has("sinner") and LEDGE() or
    has("verboten") and has("silva") or
    has("fretia") and has("plume") and (has("dodge2") and (has("verboten") or has("djump")) or has("claws")) or
    has("claws") and has("dodge2")
    -- ulv ?
  )
end
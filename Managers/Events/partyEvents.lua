
AddEventCallback("COMBAT_LOG_EVENT_UNFILTERED", function(...)
    local timestamp, type, hideCaster, sourceGUID, sourceName, sourceFlags, sourceFlags2, destGUID, destName, destFlags, destFlags2 =  ...
    if type == "SPELL_CAST_SUCCESS" then
		if select(5, ...) == UnitName("player") then
      		 spelllast = select(12, ...)
	  		 namelast = select(13, ...)
			 Debug("Successfully Casted: "..spelllast.." "..namelast)
			 return spelllast, namelast


  		end
    end
end)


AddEventCallback("PLAYER_REGEN_ENABLED", function()
	openerfinished = false
end)
function lastspell(spell)
	if spelllast == spell or namelast == spell then
		return true
	else return false
	end
end

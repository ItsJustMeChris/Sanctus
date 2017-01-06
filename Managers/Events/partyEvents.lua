
AddEventCallback("COMBAT_LOG_EVENT_UNFILTERED", function(...)
    local timestamp, type, hideCaster, sourceGUID, sourceName, sourceFlags, sourceFlags2, destGUID, destName, destFlags, destFlags2 =  ...
    if type == "SPELL_CAST_START" then
         spellstart = select(12, ...)
        return spellstart
    end

    if type == "SPELL_CAST_SUCCESS" then
		if select(5, ...) == UnitName("player") then
      		 spelllast = select(12, ...)
	  		 namelast = select(13, ...)
                if (spelllast == spellstart or spellstart == 0) then
                    castsuccess = spelllast
			              Debug("Successfully Casted: "..spelllast.." "..namelast..spellstart)
			          return castsuccess
            end
            spellstart = 0
  		end
    end
end)


AddEventCallback("PLAYER_REGEN_ENABLED", function()
	openerfinished = false
end)


function lastspell(spell)
    if spell ~= nil then
	       if (castsuccess == spell) then
               spellstart = 0
		         return true
	        else
                return false
        end
    else
        return spelllast
	end
end

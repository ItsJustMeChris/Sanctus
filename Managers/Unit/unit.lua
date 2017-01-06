--Get Distance Between Player And Other Unit
function distance(target1,target2)
    if ObjectExists(target1) and ObjectExists(target2) then
        return GetDistanceBetweenObjects(target1, target2)
    end
end

function unitcasting(spell, unit)
    local spellnamechannel = select(1, UnitChannelInfo(unit))
    local spellnamecast = select(1, UnitCastingInfo(unit))
    local spellid1 = select(7, GetSpellInfo(spellnamechannel))
    local spellid2 = select(7, GetSpellInfo(spellnamecast))
    if ObjectExists(unit) then
        if UnitChannelInfo(unit) then
            if spellid1 == spell then
                return true
            end
        elseif UnitCastingInfo(unit) then
            if spellid2 == spell then
                return true
            end
        else
            return false
        end
    end
end

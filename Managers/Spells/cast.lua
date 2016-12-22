function Cast(spell, target)
    local spellname = GetSpellInfo(spell)
    if isNumber(spell) then
        CastSpellByID(spell,target)
        Debug("Casted "..spell.." "..spellname.." on "..target)
    else
        CastSpellByName(spell,target)
        Debug("Casted "..spell.." "..spellname.." on "..target)
    end
end

function shouldCast(target)
    if combat(target) then
        return true
    else
        return false
    end
end

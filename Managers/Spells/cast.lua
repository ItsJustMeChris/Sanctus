function cast(spell, target)
    local spellname = GetSpellInfo(spell)
    if ObjectExists(target) then
        if isNumber(spell) then
            CastSpellByID(spell,target)
        else
            CastSpellByName(spell,target)
        end
    end
end

function castable(tar, cd)
    if ObjectExists(tar) and not UnitIsDeadOrGhost(tar) and cd == nil then
        return true
    elseif not UnitIsDeadOrGhost(tar) and spellcd(cd) == 0 then
        return true
    else
        return false
    end
end

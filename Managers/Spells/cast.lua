function Cast(spell, target)
    CastSpellByID(spell, target)
end

function castName(spell, target)
    CastSpellbyName(spell, target)
end

function shouldCast(target)
    if combat(target) then
        return true
    else return false
    end
end

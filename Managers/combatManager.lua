outOfCombatPull = false

function combat(target)
    if UnitAffectingCombat(target) then
        return true
    else
        return false
    end
end

function outOfCombatPull()
    if combat(player) then
        outOfCombatPull = false
    else outOfCombatPull = true
    end
end

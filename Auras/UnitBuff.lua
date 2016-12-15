function buff(spell, target)
    if UnitAura(target, spell) then
        return true
    else
        return false
    end
end

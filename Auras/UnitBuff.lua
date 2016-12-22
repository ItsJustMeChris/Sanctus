function buff(check, target)
    local spell = GetSpellInfo(check)
    if UnitAura(target, spell) then
        return true
    else
        return false
    end
end

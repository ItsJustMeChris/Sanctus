function buff(check, target)
    local spell = GetSpellInfo(check)
    if UnitBuff(target, spell) then
        return true
    else
        return false
    end
end

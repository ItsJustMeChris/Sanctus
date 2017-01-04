function dbuff(check, target)
    local spell = GetSpellInfo(check)
    if UnitDebuff(target, spell) then
        return true
    else
        return false
    end
end

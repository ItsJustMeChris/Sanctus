function buff(check, target)
    local spell = GetSpellInfo(check)
    if UnitBuff(target, spell) then
        return true
    else
        return false
    end
end

function bufftime(check, target)
    local spell = GetSpellInfo(check)
    local expire = select(7, UnitBuff(target, spell))
    if buff(check, target) then
        return expire - GetTime()
    else
        return 0
    end
end

function buffstack(check, target)
    local spell = GetSpellInfo(check)
    local stacks = select(4, UnitBuff(target, spell))
    if buff(check, target) then
        return stacks
    else
        return 0
    end
end

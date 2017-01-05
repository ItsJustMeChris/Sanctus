function dbuff(check, target)
    local spell = GetSpellInfo(check)
    if UnitDebuff(target, spell) then
        return true
    else
        return false
    end
end

function dbufftime(check, target)
    local spell = GetSpellInfo(check)
    local expire = select(7, UnitDebuff(target, spell))
    if dbuff(check, target) then
        return expire - GetTime()
    else
        return 0
    end
end

function dbuffstack(check, target)
    if dbuff(check, target) then
        local stacks = select(4, UnitDebuff(target, check))
        if stacks == nil then
            stacks = 0 
        end
                 return stacks
    end
end

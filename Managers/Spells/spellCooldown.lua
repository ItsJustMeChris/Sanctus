function spellcd(spell)
    local time, value = GetSpellCooldown(spell)
    if time == 0 then
        return 0
    end
    local cd = time + value - GetTime() - (select(4, GetNetStats()) / 1000)
    if cd > 0 then
        return cd
    else
        return 0
    end
end

function recharge(spell)
    local cd = select(4,GetSpellCharges(spell))
    local rechargetime = cd
    return rechargetime
end

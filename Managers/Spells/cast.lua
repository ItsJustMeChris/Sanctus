function cast(spell, target)
    local spellname = GetSpellInfo(spell)
            CastSpellByName(spellname,target)
end

function castable(tar, cd)
    if ObjectExists(tar) and not UnitIsDeadOrGhost(tar) and cd == nil and distcheck(cd, tar) then
        return true
    elseif not UnitIsDeadOrGhost(tar) and spellcd(cd) == 0 and distcheck(cd, tar) then
        return true
    else
        return false
    end
end

function distcheck(spell, targ)
    local mindist = select(5, GetSpellInfo(spell))
    local maxdist = select(6, GetSpellInfo(spell))
    if ObjectExists(targ) and distance(targ, "player") >= mindist and distance(targ, "player") <= maxdist then
        return true
    elseif mindist == 0 and maxdist == 0 then
        if ObjectExists(targ) and distance(targ, "player") >= 0 and distance(targ, "player") <= 8 then
            return true
        end
    else
        return false
    end
end

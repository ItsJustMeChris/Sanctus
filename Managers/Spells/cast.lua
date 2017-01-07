function cast(spell, target)
    local spellname = GetSpellInfo(spell)
        CastSpellByName(spellname,target)
end

function castable(cd, tar)
    if ObjectExists(tar) and not UnitIsDeadOrGhost(tar) and cd == nil and distcheck(cd, tar) and GetSpellCooldown(61304) == 0 and not UnitChannelInfo("player") and not UnitCastingInfo("player") then
        return true
    elseif not UnitIsDeadOrGhost(tar) and spellcd(cd) == 0 and distcheck(cd, tar) and GetSpellCooldown(61304) == 0 and not UnitChannelInfo("player") and not UnitCastingInfo("player") then
        return true
    else
        return false
    end
end

function distcheck(spell, targ)
    local mindist = select(5, GetSpellInfo(spell))
    local maxdist = select(6, GetSpellInfo(spell))
    if ObjectExists(targ) then
        if distance(targ, "player") >= mindist + UnitBoundingRadius(targ) and distance(targ, "player") <= maxdist + UnitBoundingRadius(targ) then
            return true
        elseif mindist == 0 and maxdist == 0 then
            if distance(targ, "player") >= 0 and distance(targ, "player") <= 25 then
                return true
            end
        elseif mindist == 0 and maxdist > 0 then
            if distance(targ, "player") >= 0 and distance(targ, "player") <= maxdist then
                return true
            end
        else
            return false
        end
    else return false
    end
end

function petcast(id, tar)
    local spell = GetSpellInfo(id)
    for i=1, NUM_PET_ACTION_SLOTS do
        if GetPetActionInfo(i) == spell then
            CastPetAction(i, tar)
        end
    end
end

function casttime(spell)
	local casttime = select(4,GetSpellInfo(spell))*.001
	return casttime
end

function casttimeremain(tar)
	if UnitCastingInfo(tar) ~= nil then
		local remain = select(6,UnitCastingInfo(tar))*.001 - GetTime()
    return remain
	elseif UnitChannelInfo(tar) ~= nil then
		local remain = select(6,UnitChannelInfo(tar))*.001 - GetTime()
    return remain
	else
		return 0
	end
end

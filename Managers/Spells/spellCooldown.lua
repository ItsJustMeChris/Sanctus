function spellcd(spell)
    local time, value = GetSpellCooldown(spell)
    if time == 0 then
        return 0
    end
    local cd = time + 1.5 + value - GetTime() - (select(4, GetNetStats()) / 1000)
    if cd > 0 then
        return cd
    else
        return 0
    end
end

function charges(spell)
  local charges,maxcharges,start,duration = GetSpellCharges(spell)
  if charges ~= maxcharges then
    local totalcharge = check + charges
      return math.abs(time / (duration - (start - GetTime())) * 2)
  else
      return charges
  end
end

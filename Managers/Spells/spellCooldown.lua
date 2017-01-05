function spellcd(spell)
    local time, value = GetSpellCooldown(spell)
    if time == 0 then
        return 0
    end
    local cd = time + 1.9 + value - GetTime() - (select(4, GetNetStats()) / 1000)
    if cd > 0 then
        return cd
    else
        return 0
    end
end

function charges(spell)
  local duration = select(4, GetSpellCharges(spell))
  local start = select(3, GetSpellCharges(spell))
  local charges = select(1, GetSpellCharges(spell))
  local maxcharges = select(2, GetSpellCharges(spell))
  local time = start - GetTime()
  local fractional =  duration - time
  local check = math.abs(time / fractional * 2)
  if charges ~= maxcharges then
    local totalcharge = check + charges
      return totalcharge
  else return charges
  end
end

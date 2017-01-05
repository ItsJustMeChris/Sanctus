function ttd(unit)
  local firsttime = GetTime()
  local firsthealth = UnitHealth(unit)
  local firsthealthmax = UnitHealthMax(unit)
    currentLife = UnitHealth(unit)
    currentTime = GetTime()
    timeDiff = currentTime - GetTime()
    hpDiff = firsthealth - currentLife
    end
  end
end

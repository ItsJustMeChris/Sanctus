function priority(target)
    if GetRaidTargetIndex(target) == 8 then
        return true
    end
end

function enemysinx(number, unit)
  local unitcount = 0
  for i=1,GetObjectCount() do
    if ObjectName(GetObjectWithIndex(i)) ~= ObjectName("player") and ObjectIsType(GetObjectWithIndex(i), 8) and distance(GetObjectWithIndex(i), unit) < number then
      unitcount = unitcount + 1
    end
  end
    return unitcount
end

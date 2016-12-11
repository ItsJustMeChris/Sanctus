function health(unit)
    return (UnitHealthMax(unit)) / (UnitHealth(unit)) * (100)
end

function healthExact(unit)
    return UnitHealth(unit)
end

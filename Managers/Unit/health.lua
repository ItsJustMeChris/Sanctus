function health(unit)
    return (UnitHealthMax(unit)) / (UnitHealth(unit)) * (100)
end

function healthexact(unit)
    return UnitHealth(unit)
end

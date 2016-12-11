function power(unit)
    return (UnitPowerMax(unit)) / (UnitPower(unit)) * (100)
end

function powerExact(unit)
    return UnitPower(unit)
end

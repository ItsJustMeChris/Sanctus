function power(unit)
    return (UnitPowerMax(unit)) / (UnitPower(unit)) * (100)
end

function powerexact(unit)
    return UnitPower(unit)
end

function powermax(unit)
    return UnitPowerMax(unit)
end

function powerdef(unit)
    return UnitPowerMax(unit) - UnitPower(unit)
end

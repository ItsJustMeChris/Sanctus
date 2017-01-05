function health(unit)
    return UnitHealth(unit) / UnitHealthMax(unit) * 100
end

function healthexact(unit)
    return UnitHealth(unit)
end

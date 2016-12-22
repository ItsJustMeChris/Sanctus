function talent(talent)
    if select(10,GetTalentInfoByID(talent, 1, false, "player")) then
        return true
    else
        return false
    end
end

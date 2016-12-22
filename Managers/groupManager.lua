Group = {

}

function getGroup()
    local groupType = IsInRaid() and "raid" or "party";
        for i=1, GetNumGroupMembers() do
            local Unit = (groupType .. i)
            if groupType == "party" and i == GetNumGroupMembers() then
                table.insert(Group, {Unit = ObjectGUID("player")})
                elseif ObjectExists(Unit) and Group[i].Unit ~= Unit then
                table.insert(Group, {Unit = ObjectGUID(Unit), Role=UnitGroupRolesAssigned(Unit)})
            elseif GetNumGroupMembers() == 0 then
                table.insert(Group, {Unit = "player", Role="HEALER"})
            end
        end
        return Group
end

--Get Distance Between Player And Other Unit
function distance(target1,target2)
    if ObjectExists(target1) and ObjectExists(target2) then
        return GetDistanceBetweenObjects(target1, target2)
    end
end

--Get Distance Between Player And Other Unit
function distance(target1,target2)
    local px,py,pz = ObjectPosition(target1)
    local ox,oy,oz = ObjectPosition(target2)
    return math.sqrt(((px - ox)^2) + ((py - oy)^2) + ((pz - oz)^2))
end

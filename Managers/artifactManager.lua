function artifact(id)
    if HasArtifactEquipped() then
        if not ArtifactFrame or not ArtifactFrame:IsShown() then
            SocketInventoryItem(16)
        end
        local rank = select(3,C_ArtifactUI.GetPowerInfo(id))
        local rankmax = select(4,C_ArtifactUI.GetPowerInfo(id))
        print(rank.." "..rankmax)
        if rank > 0 then
            HideUIPanel(ArtifactFrame)
            return true
        else
            HideUIPanel(ArtifactFrame)
            return false
        end
    end

end

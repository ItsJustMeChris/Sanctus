function artifact(id)
  if HasArtifactEquipped() then
    if not ArtifactFrame:IsShown() then
      SocketInventoryItem(16)
  else return false
    end
    local rank = select(3,C_ArtifactUI.GetPowerInfo(id))
    local rankmax = select(4,C_ArtifactUI.GetPowerInfo(id))
    if rank > 0 then
        return true
    else return false
  end
  if ArtifactFrame:IsShown() then
    HideUIPanel(ArtifactFrame)
    end
end
end

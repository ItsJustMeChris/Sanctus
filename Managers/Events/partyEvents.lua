AddEventCallback("GROUP_ROSTER_UPDATE", function()
	table.wipe(Group)
	getGroup()
end)

AddEventCallback("GROUP_JOINED", function()
    table.wipe(Group)
	getGroup()
end)

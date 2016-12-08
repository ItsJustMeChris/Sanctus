toggle = false
function start()
	MainFrame = CreateFrame("FRAME", nil, UIParent)
	MainFrame:SetScript("OnUpdate", update)
end

function update(self, elapsed)
	local throttle = throttle + elapsed
	if toggle and throttle <= .450 then
		sanaRotationStart()
    elseif sanaTick >= 1 then
		sanaCheckRejuv()
		sanaCheckLifebloom()
		sanaTick = 0
	end
end

function Print(msg)
    print("[Sanctus] "..msg)
end

function toggleSanctus()
    if toggle then
        toggle = false
        Print("Disabled")
    else
        toggle = true
        Print("Enabled")
    end
end

function listCommands()
    Print("Current Commands")
    Print("help:  Reveals this list")
    Print("toggle:  Enables and Disables the bot")
end

SLASH_SANCTUS = '/sanctus'
function handler(msg, editbox)
	if msg == string.lower("toggle") then
		toggleSanctus()
	elseif msg == string.lower("help") then
        listCommands()
	else
		Print("Invalid Command "..msg)
	end
end
SlashCmdList["SANCTUS"] = handler

start()

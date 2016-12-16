local version = 1.1
toggle = false
function start()
	MainFrame = CreateFrame("FRAME", nil, UIParent)
	MainFrame:SetScript("OnUpdate", update)
	Print("Loaded Sanctus Version "..version)
end

function update(self, elapsed)
	local throttle = 0
	local throttle = throttle + elapsed
	if toggle and throttle <= .450 then
		rotationSelect()
		throttle = 0
	end
end

function Print(msg)
    print("|cFF00FF00[Sanctus]|r "..msg)
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

SLASH_SANCTUS1 = '/sanctus'
function handler(msg, editbox)
  	if msg == "toggle" then
  		toggleSanctus()
	elseif msg == "debug" then
      	        Print("Debugging")
        elseif msg == "help" then
                listCommands()
	elseif msg == "l0l1dk" then
		Print("Isn't l0l1dk amazing!")
	else
		Print("Invalid Command: |cFFFF0000" .. msg .. "|r try /sanctus help")
  end
end
SlashCmdList["SANCTUS"] = handler;

start()

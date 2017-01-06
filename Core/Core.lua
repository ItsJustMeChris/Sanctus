local version = 1.1
local ver = "|cFF2ECC71"..version.."|r"
local user = UnitName("player")
toggle = false
debug = false
function start()
	AddTimerCallback (.2,function()
		rotationSelect()
	end)
end



function Print(msg)
    print("|cFFF27935[Sanctus]|r "..msg)
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

function toggleDebugger()
    if debug then
        debug = false
        Debug("Disabled")
    else
        debug = true
        Debug("Enabled")
    end
end

function Debug(msg)
	if debug then
		Print("Debugger Caught "..msg)
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
		toggleDebugger()
    elseif msg == "help" then
        listCommands()
	elseif msg == "l0l1dk" then
		Print("Isn't l0l1dk amazing!")
	elseif msg == "" then
		Print("Just Do It.  ")
	else
		Print("Invalid Command: |cFFFF0000" .. msg .. "|r try /sanctus help")
  end
end
SlashCmdList["SANCTUS"] = handler;

start()

AddEventCallback("PLAYER_ENTERING_WORLD", function()
	Print("Loaded Sanctus Version "..ver)
end)

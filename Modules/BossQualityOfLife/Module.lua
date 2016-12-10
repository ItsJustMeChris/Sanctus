local Module = "Boss Quality Of Life"
local Creater = "Chris"
local function loadModule()
    Print("Loaded "..Module.." by "..Creator)
    LoadFile("Modules\\BossQualityOfLife\\Bosses\\Helya\\Helya.lua")
    LoadFile("Modules\\BossQualityOfLife\\Module.lua")
end

loadModule()

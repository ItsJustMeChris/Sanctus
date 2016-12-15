local WowAddon = GetWoWDirectory() .. "\\" .. "Interface" .. "\\" ..  "Addons" .. "\\"
local AddonName = "Sanctus"
local Root =  WowAddon .. AddonName .. "\\"




function LoadFile(FilePath,LoadMsg)
  lua = ReadFile(Root .. FilePath)

  if not lua then
    print(Root .. FilePath .. " Does not exist")
  end

  local func,err = loadstring(lua,Root .. "\\" .. FilePath)
  if err then
    error(err,0)
  end
  pcall(func)
  if LoadMsg then
    print(LoadMsg)
  end
end


--    Core
LoadFile("Core\\Core.lua")

--    Managers
LoadFile("Managers\\bossManager.lua")
LoadFile("Managers\\enemyManager.lua")
LoadFile("Managers\\groupManager.lua")
LoadFile("Managers\\locationManager.lua")
LoadFile("Managers\\rotationManager.lua")
LoadFile("Managers\\Inventory\\useItem.lua")
LoadFile("Managers\\Unit\\health.lua")
LoadFile("Managers\\Unit\\power.lua")
LoadFile("Managers\\Spells\\cast.lua")
LoadFile("Managers\\combatManager.lua")
LoadFile("Managers\\Talents\\talents.lua")
--    UnitAuras
LoadFile("Auras\\UnitBuff.lua")
LoadFile("Auras\\UnitDeBuff.lua")

LoadFile("Modules\\Modules.lua")

LoadFile("Rotations\\GeneralSpells.lua")

--      Spells
LoadFile("Rotations\\DeathKnight\\Frost\\frostSpells.lua")
--    Rotations
function loadRestorationDruid()
    LoadFile("Rotations\\Druid\\Restoration\\bRestorationDruid.lua")
    LoadFile("Rotations\\Druid\\Restoration\\RestorationNormal.lua")
end

function loadFeralDruid()
    LoadFile("Rotations\\Druid\\Feral\\bFeralDruid.lua")
    LoadFile("Rotations\\Druid\\Feral\\FeralNormal.lua")
end

function loadGuardianDruid()
    LoadFile("Rotations\\Druid\\Guardian\\bGuardianDruid.lua")
    LoadFile("Rotations\\Druid\\Guardian\\GuardianNormal.lua")
end

function loadBalanceDruid()
    LoadFile("Rotations\\Druid\\Balance\\bBalanceDruid.lua")
    LoadFile("Rotations\\Druid\\Balance\\BalanceNormal.lua")
end

function loadBloodDeathKnight()
    LoadFile("Rotations\\DeathKnight\\Blood\\bBloodDeathKnight.lua")
    LoadFile("Rotations\\DeathKnight\\Blood\\BloodNormal.lua")
end

--function loadFrostDeathKnight()
    LoadFile("Rotations\\DeathKnight\\Frost\\bFrostDeathKnight.lua")
    LoadFile("Rotations\\DeathKnight\\Frost\\FrostNormal.lua")
--end

function loadUnholyDeathKnight()
    LoadFile("Rotations\\DeathKnight\\Unholy\\bUnholyDeathKnight.lua")
    LoadFile("Rotations\\DeathKnight\\Unholy\\UnholyNormal.lua")
end

function loadHavocDemonHunter()
    LoadFile("Rotations\\DemonHunter\\Havoc\\bHavocDemonHunter.lua")
    LoadFile("Rotations\\DemonHunter\\Havoc\\HavocNormal.lua")
end

function loadVengeanceDemonHunter()
    LoadFile("Rotations\\DemonHunter\\Vengeance\\bVengeanceDemonHunter.lua")
    LoadFile("Rotations\\DemonHunter\\Vengeance\\VengeanceNormal.lua")
end

function loadBeastMasterHunter()
    LoadFile("Rotations\\Hunter\\BeastMaster\\bBeastMasterHunter.lua")
    LoadFile("Rotations\\Hunter\\BeastMaster\\BeastMasterNormal.lua")
end

function loadSurvivalHunter()
    LoadFile("Rotations\\Hunter\\Survival\\bSurvivalHunter.lua")
    LoadFile("Rotations\\Hunter\\Survival\\SurvivalNormal.lua")
end

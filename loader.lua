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

--    Misc
LoadFile("Misc\\type.lua")

--    Managers
LoadFile("Managers\\bossManager.lua")
LoadFile("Managers\\enemyManager.lua")
LoadFile("Managers\\groupManager.lua")
LoadFile("Managers\\locationManager.lua")
LoadFile("Managers\\rotationManager.lua")
LoadFile("Managers\\artifactManager.lua")
LoadFile("Managers\\Events\\partyEvents.lua")
LoadFile("Managers\\Inventory\\useItem.lua")
LoadFile("Managers\\Unit\\health.lua")
LoadFile("Managers\\Unit\\power.lua")
LoadFile("Managers\\Unit\\unit.lua")
LoadFile("Managers\\Spells\\cast.lua")
LoadFile("Managers\\Spells\\place.lua")
LoadFile("Managers\\Spells\\spellCooldown.lua")
LoadFile("Managers\\combatManager.lua")
LoadFile("Managers\\Talents\\talents.lua")
--    UnitAuras
LoadFile("Auras\\UnitBuff.lua")
LoadFile("Auras\\UnitDeBuff.lua")

LoadFile("Modules\\Modules.lua")

LoadFile("Rotations\\GeneralSpells.lua")
--    Rotations
--function loadRestorationDruid()
    LoadFile("Rotations\\Druid\\Restoration\\bRestorationDruid.lua")
    LoadFile("Rotations\\Druid\\Restoration\\RestorationNormal.lua")
--end

--function loadFeralDruid()
    LoadFile("Rotations\\Druid\\Feral\\bFeralDruid.lua")
    LoadFile("Rotations\\Druid\\Feral\\FeralNormal.lua")
--end

--function loadGuardianDruid()
    LoadFile("Rotations\\Druid\\Guardian\\bGuardianDruid.lua")
    LoadFile("Rotations\\Druid\\Guardian\\GuardianNormal.lua")
    LoadFile("Rotations\\Druid\\Guardian\\guardianSpells.lua")
--end

--function loadBalanceDruid()
    LoadFile("Rotations\\Druid\\Balance\\bBalanceDruid.lua")
    LoadFile("Rotations\\Druid\\Balance\\BalanceNormal.lua")
--end

--function loadBloodDeathKnight()
    LoadFile("Rotations\\DeathKnight\\Blood\\bBloodDeathKnight.lua")
    LoadFile("Rotations\\DeathKnight\\Blood\\BloodNormal.lua")
--end

--function loadFrostDeathKnight()
    LoadFile("Rotations\\DeathKnight\\Frost\\bFrostDeathKnight.lua")
    LoadFile("Rotations\\DeathKnight\\Frost\\FrostNormal.lua")
    LoadFile("Rotations\\DeathKnight\\Frost\\frostspells.lua")
--end

--function loadUnholyDeathKnight()
    LoadFile("Rotations\\DeathKnight\\Unholy\\bUnholyDeathKnight.lua")
    LoadFile("Rotations\\DeathKnight\\Unholy\\UnholyNormal.lua")
--end

--function loadHavocDemonHunter()
    LoadFile("Rotations\\DemonHunter\\Havoc\\bHavocDemonHunter.lua")
    LoadFile("Rotations\\DemonHunter\\Havoc\\HavocNormal.lua")
--end

--function loadVengeanceDemonHunter()
    LoadFile("Rotations\\DemonHunter\\Vengeance\\bVengeanceDemonHunter.lua")
    LoadFile("Rotations\\DemonHunter\\Vengeance\\VengeanceNormal.lua")
--end

--function loadBeastMasterHunter()
    LoadFile("Rotations\\Hunter\\BeastMaster\\bBeastMasterHunter.lua")
    LoadFile("Rotations\\Hunter\\BeastMaster\\BeastMasterNormal.lua")
--end

--function loadSurvivalHunter()
    LoadFile("Rotations\\Hunter\\Survival\\bSurvivalHunter.lua")
    LoadFile("Rotations\\Hunter\\Survival\\SurvivalNormal.lua")
--end

--function LoadMarksmanshipHunter()
    LoadFile("Rotations\\Hunter\\Marksmanship\\bMarksmanshipHunter.lua")
    LoadFile("Rotations\\Hunter\\Marksmanship\\MarksmanshipNormal.lua")
--end

--function LoadArcaneMage()
    LoadFile("Rotations\\Mage\\Arcane\\bArcaneMage.lua")
    LoadFile("Rotations\\Mage\\Arcane\\ArcaneNormal.lua")
--end

--function LoadFireMage()
    LoadFile("Rotations\\Mage\\Fire\\bFireMage.lua")
    LoadFile("Rotations\\Mage\\Fire\\FireNormal.lua")
--end

--function LoadFrostMage()
    LoadFile("Rotations\\Mage\\Frost\\bFrostMage.lua")
    LoadFile("Rotations\\Mage\\Frost\\FrostNormal.lua")
    LoadFile("Rotations\\Mage\\Frost\\frostspells.lua")

--end

--function LoadBrewMasterMonk()
    LoadFile("Rotations\\Monk\\BrewMaster\\bBrewMasterMonk.lua")
    LoadFile("Rotations\\Monk\\BrewMaster\\BrewMasterNormal.lua")
--end

--function LoadMistWeaverMonk()
    LoadFile("Rotations\\Monk\\MistWeaver\\bMistWeaverMonk.lua")
    LoadFile("Rotations\\Monk\\MistWeaver\\MistWeaverNormal.lua")
--end

--function LoadWindWalkerMonk()
    LoadFile("Rotations\\Monk\\WindWalker\\bWindWalkerMonk.lua")
    LoadFile("Rotations\\Monk\\WindWalker\\WindWalkerNormal.lua")
--end

--function LoadHolyPaldin()
    LoadFile("Rotations\\Paladin\\Holy\\bHolyPaladin.lua")
    LoadFile("Rotations\\Paladin\\Holy\\HolyNormal.lua")
--end

--function LoadProtectionPaladin()
    LoadFile("Rotations\\Paladin\\Protection\\bProtectionPaladin.lua")
    LoadFile("Rotations\\Paladin\\Protection\\ProtectionNormal.lua")
--end

--function LoadRetributionPaladin()
    LoadFile("Rotations\\Paladin\\Retribution\\bRetributionPaladin.lua")
    LoadFile("Rotations\\Paladin\\Retribution\\RetributionNormal.lua")
--end

--function LoadRetributionPaladin()
    LoadFile("Rotations\\Paladin\\Retribution\\bRetributionPaladin.lua")
    LoadFile("Rotations\\Paladin\\Retribution\\RetributionNormal.lua")
--end

--function LoadDisciplinePriest()
    LoadFile("Rotations\\Priest\\Discipline\\bDisciplinePriest.lua")
    LoadFile("Rotations\\Priest\\Discipline\\DisciplineNormal.lua")
--end

--function LoadHolyPriest()
    LoadFile("Rotations\\Priest\\Holy\\bHolyPriest.lua")
    LoadFile("Rotations\\Priest\\Holy\\HolyNormal.lua")
--end

--function LoadShadowPriest()
    LoadFile("Rotations\\Priest\\Shadow\\bShadowPriest.lua")
    LoadFile("Rotations\\Priest\\Shadow\\ShadowNormal.lua")
--end

--function LoadAssassinationRogue()
    LoadFile("Rotations\\Rogue\\Assassination\\bAssassinationRogue.lua")
    LoadFile("Rotations\\Rogue\\Assassination\\AssassinationNormal.lua")
--end

--function LoadCombatRogue()
    LoadFile("Rotations\\Rogue\\Combat\\bCombatRogue.lua")
    LoadFile("Rotations\\Rogue\\Combat\\CombatNormal.lua")
--end

--function LoadSubtletyRogue()
    LoadFile("Rotations\\Rogue\\Subtlety\\bSubtletyRogue.lua")
    LoadFile("Rotations\\Rogue\\Subtlety\\SubltetyNormal.lua")
--end

--function LoadElementalShaman()
    LoadFile("Rotations\\Shaman\\Elemental\\bElementalShaman.lua")
    LoadFile("Rotations\\Shaman\\Elemental\\ElementalNormal.lua")
--end

--function LoadEnhancementShaman()
    LoadFile("Rotations\\Shaman\\Enhancement\\bEnhancementShaman.lua")
    LoadFile("Rotations\\Shaman\\Enhancement\\EnhancementNormal.lua")
--end

--function LoadRestorationShaman()
    LoadFile("Rotations\\Shaman\\Restoration\\bRestorationShaman.lua")
    LoadFile("Rotations\\Shaman\\Restoration\\RestorationNormal.lua")
--end

--function LoadAfflictionWarlock()
    LoadFile("Rotations\\Warlock\\Affliction\\bAfflictionWarlock.lua")
    LoadFile("Rotations\\Warlock\\Affliction\\AfflictionNormal.lua")
--end

--function LoadDemonologyWarlock()
    LoadFile("Rotations\\Warlock\\Demonology\\bDemonologyWarlock.lua")
    LoadFile("Rotations\\Warlock\\Demonology\\DemonologyNormal.lua")
--end

--function LoadDestructionWarlock()
    LoadFile("Rotations\\Warlock\\Destruction\\bDestructionWarlock.lua")
    LoadFile("Rotations\\Warlock\\Destruction\\DestructionNormal.lua")
--end

--function LoadArmsWarrior()
    LoadFile("Rotations\\Warrior\\Arms\\bArmsWarrior.lua")
    LoadFile("Rotations\\Warrior\\Arms\\ArmsNormal.lua")
    LoadFile("Rotations\\Warrior\\Arms\\armsspells.lua")
--end

--function LoadDestructionWarlock()
    LoadFile("Rotations\\Warrior\\Fury\\bFuryWarrior.lua")
    LoadFile("Rotations\\Warrior\\Fury\\FuryNormal.lua")
--end

--function LoadDestructionWarlock()
    LoadFile("Rotations\\Warrior\\Protection\\bProtectionWarrior.lua")
    LoadFile("Rotations\\Warrior\\Protection\\ProtectionNormal.lua")
--end

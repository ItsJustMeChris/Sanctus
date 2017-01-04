function rotationSelect()
	if toggle then
	local playerSpec = GetSpecializationInfo(GetSpecialization())
	if playerSpec == 62 then
        arcaneMageRotation()
    elseif playerSpec == 63 then
        fireMageRotation()
	elseif playerSpec == 64 then
        frostMageRotation()
    elseif playerSpec == 65 then
        holyPaladinRotation()
    elseif playerSpec == 66 then
        protectionPaladinRotation()
	elseif playerSpec == 70 then
        retributionPaladinRotation()
	elseif playerSpec == 71 then
        armsWarriorRotation()
    elseif playerSpec == 72 then
        furyWarriorRotation()
    elseif playerSpec == 73 then
        protectionWarriorRotation()
    elseif playerSpec == 102 then
        balanceDruidRotation()
    elseif playerSpec == 103 then
        feralDruidRotation()
    elseif playerSpec == 104 then
        guardianDruidRotation()
    elseif playerSpec == 105 then
        restorationDruidRotation()
    elseif playerSpec == 250 then
        bloodDeathKnightRotation()
    elseif playerSpec == 251 then
        frostDeathKnightRotation()
    elseif playerSpec == 252 then
        unholyDeathKnightRotation()
    elseif playerSpec == 253 then
        beastMasteryHunterRotation()
    elseif playerSpec == 254 then
        marksmanshipHunterRotation()
    elseif playerSpec == 255 then
        survivalHunterRotation()
    elseif playerSpec == 256 then
        disciplinePriestRotation()
    elseif playerSpec == 257 then
        holyPriestRotation()
    elseif playerSpec == 258 then
        shadowPriestRotation()
    elseif playerSpec == 259 then
        assassinationRogueRotation()
    elseif playerSpec == 260 then
        combatRogueRotation()
    elseif playerSpec == 261 then
        subtletyRogueRotation()
    elseif playerSpec == 262 then
        elementalShamanRotation()
    elseif playerSpec == 263 then
        enhancementShamanRotation()
    elseif playerSpec == 264 then
        restorationShamanRotation()
    elseif playerSpec == 265 then
        afflictionWarlockRotation()
    elseif playerSpec == 266 then
        demonologyWarlockRotation()
    elseif playerSpec == 267 then
        destructionWarlockRotation()
    elseif playerSpec == 268 then
        brewmasterMonkRotation()
    elseif playerSpec == 269 then
        windwalkerMonkRotation()
    elseif playerSpec == 270 then
        mistweaverMonkRotation()
    elseif playerSpec == 577 then
        havocDemonHunterRotation()
    elseif playerSpec == 581 then
        vengeanceDemonHunterRotation()
    else
        print("error")
	end
end
end

function guardianDruidRotation()
    if castable("target", guardianSpell.charge) then
        cast(guardianSpell.charge, "target")
    end
    if talent(guardianTalent.Incarnation_Guardian_of_Ursoc) and castable("target", guardianSpell.incarnationguardianofursoc) and enemysinx(8, "player") >= 3 then
        cast(guardianSpell.incarnationguardianofursoc, "target")
    end
    if castable("target", guardianSpell.survivalinsticts) and charges(guardianSpell.survivalinsticts) >= 2 and health("player") < 75 then
        cast(guardianSpell.survivalinsticts, "player")
    end
    if castable("target", guardianSpell.survivalinsticts) and charges(guardianSpell.survivalinsticts) >= 1 and charges(guardianSpell.survivalinsticts) <= 2 and health("player") < 50 then
        cast(guardianSpell.survivalinsticts, "player")
    end
    if castable("target", guardianSpell.barskin) and not buff(guardianSpell.survivalinsticts, "player") and health("player") < 65 then
        cast(guardianSpell.barskin, "player")
    end
    if castable("target", guardianSpell.ironfur) and power("player") > 50 then
        cast(guardianSpell.ironfur, "player")
    end
    if castable("target", guardianSpell.markofursol) and health("player") < 50 then
        cast(guardianSpell.markofursol, "player")
    end
--if SecondsUntilBigHit < 1 and not HasBuff(SurvivalInstincts) and not HasBuff(Barkskin) and not HasBuff(MarkOfUrsol)
    if talent(guardianTalent.Bristling_Fur) and health("player") < 65 and castable("target", guardianSpell.bristlingfur) and not buff(guardianSpell.survivalinsticts, "player") and not buff(guardianSpell.barskin, "player") and not buff(guardianSpell.markofursol, "player") then
        cast(guardianSpell.bristlingfur, "player")
    end
    if castable("target", guardianSpell.frenziedregeneration) and health("player") < 50 and not buff(guardianSpell.frenziedregeneration, "player") then
        cast(guardianSpell.frenziedregeneration, "player")
    end
    if talent(guardianTalent.Pulverize) and castable("target", guardianSpell.pulverize) then
        cast(guardianSpell.pulverize, "target")
    end
    if castable("target", guardianSpell.thrash) then
        cast(guardianSpell.thrash, "target")
    end
    if castable("target", guardianSpell.swipe) then
        cast(guardianSpell.swipe, "target")
    end
end

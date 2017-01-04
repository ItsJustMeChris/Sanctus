function armsWarriorRotation()

    if enemysinx(7, "player") <= 2 then
        --Cast Charge if you are out of range of your target.
        if ObjectExists("target") and castable("target", warrior.charge) and charge("target") then
            cast(warrior.charge, "target")
        end
        --Cast Colossus Smash if available and Shattered Defenses is not active.
        if castable("target", warrior.colossussmash) then
            cast(warrior.colossussmash, "target")
        end
        --Cast Focused Rage once following each Colossus Smash cast, or during Battle Cry.
        if castable("target", warrior.focusedrage) and buff(warrior.battlecry, "player") then
            cast(warrior.focusedrage, "target")
        end
        --Cast  Warbreaker if Colossus Smash is absent from the target and Shattered Defenses is not active.
        if IsSpellKnown(warrior.warbreaker) and castable("target", warrior.warbreaker) and not dbuff(warrior.colossussmash, "target") then
            cast(warrior.warbreaker, "target")
        end
        --shockwavefiller
        if talent(warriort.Shockwave) and castable("target", warrior.shockwave) then
            cast(warrior.shockwave, "target")
        end
        --Cast Execute with Ayalas Stone Heart procs, or if your target is below 20%.
        if castable("target", warrior.execute) and (buff(warrior.stoneheart, "player") or health("target") < 20) then
            cast(warrior.execute, "target")
        end
        --Cast Mortal Strike on cooldown.
        if castable("target", warrior.mortalstrike) then
            cast(warrior.mortalstrike, "target")
        end
        --Cast Slam when above 32 Rage and both Mortal Strike and Colossus Smash are unavailable.
        if castable("target", warrior.slam) and powerexact("player") > 32 and not castable("target", warrior.colossussmash) and not castable("target", warrior.mortalstrike) then
            cast(warrior.slam, "target")
        end
        --Cast Focused Rage to at 25 Rage from your cap to avoid waste.
        if talent(warriort.FocusedRage) and castable("target", warrior.focusedrage) and powerdef("player") <= 25 then
            cast(warrior.focusedrage, "target")
        end
    end

    if enemysinx(8, "player") >= 2 and enemysinx(15, "player") <= 3 then
        --Cast Charge if you are out of range of your target.
        if ObjectExists("target") and castable("target", warrior.charge) and charge("target") then
            cast(warrior.charge, "target")
        end
        --Cast Colossus Smash if available and Shattered Defenses is not active.
        if castable("target", warrior.colossussmash) then
            cast(warrior.colossussmash, "target")
        end
        --Cast Focused Rage once following each Colossus Smash cast, or during Battle Cry.
        if castable("target", warrior.focusedrage) and buff(warrior.battlecry, "player") then
            cast(warrior.focusedrage, "target")
        end
        --Cast  Warbreaker if Colossus Smash is absent from the target and Shattered Defenses is not active.
        if IsSpellKnown(warrior.warbreaker) and castable("target", warrior.warbreaker) and not dbuff(warrior.colossussmash, "target") then
            cast(warrior.warbreaker, "target")
        end
        --shockwavefiller
        if talent(warriort.Shockwave) and castable("target", warrior.shockwave) then
            cast(warrior.shockwave, "target")
        end
        --Cast Execute with Ayalas Stone Heart procs, or if your target is below 20%.
        if castable("target", warrior.execute) and (buff(warrior.stoneheart, "player") or health("target") < 20) then
            cast(warrior.execute, "target")
        end
        --Cast Mortal Strike on cooldown.
        if castable("target", warrior.mortalstrike) then
            cast(warrior.mortalstrike, "target")
        end
        --Cast Slam when above 32 Rage and both Mortal Strike and Colossus Smash are unavailable.
        if castable("target", warrior.whirlwind) and powerexact("player") > 32 and not castable("target", warrior.colossussmash) and not castable("target", warrior.mortalstrike) then
            cast(warrior.whirlwind, "target")
        end
        --Cast Focused Rage to at 25 Rage from your cap to avoid waste.
        if talent(warriort.FocusedRage) and castable("target", warrior.focusedrage) and powerdef("player") <= 25 then
            cast(warrior.focusedrage, "target")
        end
    end

    if enemysinx(7, "player") >= 4 then
        if IsSpellKnown(warrior.warbreaker) and castable("target", warrior.warbreaker) then
            cast(warrior.warbreaker, "target")
        end
        if castable("target", warrior.bladestorm) and dbuff(warrior.colossussmash, "target") then
            cast(warrior.bladestorm, "target")
        end
        if castable("target", warrior.cleave) then
            cast(warrior.cleave, "target")
        end
        if castable("target", warrior.whirlwind) then
            cast("target", warrior.whirlwind)
        end
        if castable("target", warrior.focusedrage) and buff(warrior.battlecry, "player") then
            cast(warrior.focusedrage, "target")
        end
        if IsSpellKnown(warrior.warbreaker) and castable("target", warrior.warbreaker) and not dbuff(warrior.colossussmash, "target") then
            cast(warrior.warbreaker, "target")
        end
        if talent(warriort.Shockwave) and castable("target", warrior.shockwave) then
            cast(warrior.shockwave, "target")
        end
        if castable("target", warrior.execute) and (buff(warrior.stoneheart, "player") or health("target") < 20) then
            cast(warrior.execute, "target")
        end
        if castable("target", warrior.mortalstrike) then
            cast(warrior.mortalstrike, "target")
        end
        if castable("target", warrior.whirlwind) and powerexact("player") > 32 and not castable("target", warrior.colossussmash) and not castable("target", warrior.mortalstrike) then
            cast(warrior.whirlwind, "target")
        end
        if talent(warriort.FocusedRage) and castable("target", warrior.focusedrage) and powerdef("player") <= 25 then
            cast(warrior.focusedrage, "target")
        end
    end
end

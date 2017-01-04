function armsWarriorRotation()
            --Single Target
            if enemysinx(7, "player") <= 2 or health("target") < 25 then
        --# Executed every time the actor is available.
        --actions=charge
        if ObjectExists("target") and castable("target", warrior.charge) and charge("target") then
            cast(warrior.charge, "target")
        end
        --actions+=/auto_attack

        --actions+=/potion,name=old_war,if=buff.avatar.up&buff.battle_cry.up&debuff.colossus_smash.up|target.time_to_die<=26
        --
        --actions+=/blood_fury,if=buff.battle_cry.up|target.time_to_die<=16
        if castable("target", warrior.bloodfury) and (buff(warrior.battlecry, "player")) then
            cast(warrior.bloodfury)
        end
        --actions+=/berserking,if=buff.battle_cry.up|target.time_to_die<=11
        --              if castable("target", warrior.berserking) and buff(warrior.battlecry, "player") then
        --            cast(warrior.berserking, "target")
        --        end
        --actions+=/arcane_torrent,if=buff.battle_cry_deadly_calm.down&rage.deficit>40
        --nah
        --
        --actions+=/battle_cry,if=gcd.remains<0.25&(buff.shattered_defenses.up|cooldown.warbreaker.remains>7&cooldown.colossus_smash.remains>7|cooldown.colossus_smash.remains&debuff.colossus_smash.remains>gcd)|target.time_to_die<=5
        if castable("target", warrior.battlecry) and buff(warrior.shattereddefenses, "player") then
            cast(warrior.battlecry, "target")
        end
        --actions+=/avatar,if=gcd.remains<0.25&(buff.battle_cry.up|cooldown.battle_cry.remains<15)|target.time_to_die<=20
        if castable("target", warrior.avatar) and buff(warrior.battlecry, "player") then
            cast(warrior.battlecry, "target")
        end
        --actions+=/heroic_leap

        --actions+=/rend,if=remains<gcd
        if talent(warriort.Rend) and castable("target", warrior.rend) and not buff(warrior.rend, "target") then
            cast(warrior.rend)
        end
        --actions+=/focused_rage,if=buff.battle_cry_deadly_calm.remains>cooldown.focused_rage.remains&(buff.focused_rage.stack<3|cooldown.mortal_strike.remains)
        if castable("target", warrior.focusedrage) and (talent(warriort.DeadlyCalm) and bufftime(warrior.deadlycalm, "player") > spellcd(warrior.focusedrage)) and (buffstack(warrior.focusedrage, "player") < 3 or spellcd(warrior.mortalstrike) > 1) then
            cast(warrior.focusedrage, "target")
        end
        --actions+=/colossus_smash,if=cooldown_react&debuff.colossus_smash.remains<gcd
        if castable("target", warrior.colossussmash) and dbufftime(warrior.colossussmash, "target") < 2 then
            cast(warrior.colossussmash, "target")
        end
        --actions+=/warbreaker,if=debuff.colossus_smash.remains<gcd
        if castable("target", warrior.warbreaker) and dbufftime(warrior.colossussmash, "target") < 2 then
            cast(warrior.warbreaker, "target")
        end
        --actions+=/ravager

        --actions+=/overpower,if=buff.overpower.react
        if castable("target", warrior.overpower) and buff(60503, "player") then
            cast(warrior.overpower, "target")
        end

        if castable("target", warrior.mortalstrike) and buff(warrior.battlecry, "player") and buffstack(warrior.focusedrage, "player") > 2 then
            cast(warrior.mortalstrike, "target")
        end
        --# actions.execute+=/heroic_charge,if=rage.deficit>=40&(!cooldown.heroic_leap.remains|swing.mh.remains>1.2)
        --#Remove the # above to run out of melee and charge back in for rage.
        --actions.execute+=/execute,if=buff.battle_cry_deadly_calm.up
        if castable("target", warrior.execute) and buff(warrior.deadlycalm, "player") then
            cast(warrior.execute, "target")
        end
        --actions.execute+=/colossus_smash,if=cooldown_react&buff.shattered_defenses.down
        if castable("target", warrior.colossussmash) and not buff(warrior.shattereddefenses, "player") then
            cast(warrior.colossussmash, "target")
        end
        --actions.execute+=/execute,if=buff.shattered_defenses.up&(rage>=17.6|buff.stone_heart.react)
        if castable("target", warrior.execute) and (buff(warrior.shattereddefenses, "player") and powerexact("player") > 17 and health("target") < 20) or buff(warrior.stoneheart, "player") then
            cast(warrior.execute, "target")
        end
        --
        --actions.cleave=mortal_strike
        if castable("target", warrior.mortalstrike) and powerexact("player") > 40 then
            cast(warrior.mortalstrike, "target")
        end
        --actions.cleave+=/execute,if=buff.stone_heart.react
        if castable("target", warrior.execute) and buff(warrior.stoneheart, "player") then
            cast(warrior.execute, "target")
        end
        --actions.cleave+=/colossus_smash,if=buff.shattered_defenses.down&buff.precise_strikes.down
        if castable("target", warrior.colossussmash) and not buff(warrior.shattereddefenses, "player") and not buff(warrior.precisestrikes, "player") then
            cast(warrior.colossussmash, "target")
        end
        --actions.cleave+=/warbreaker,if=buff.shattered_defenses.down
        if castable("target", warrior.warbreaker) and not buff(warrior.shattereddefenses, "player") then
            cast(warrior.warbreaker, "player")
        end
        --actions.cleave+=/focused_rage,if=rage>100|buff.battle_cry_deadly_calm.up
        if castable("target", warrior.focusedrage) and (powerexact("player") > 100 or buff(warrior.deadlycalm, "player")) then
            cast(warrior.focusedrage, "target")
        end
        --actions.cleave+=/whirlwind,if=talent.fervor_of_battle.enabled&(debuff.colossus_smash.up|rage.deficit<50)&(!talent.focused_rage.enabled|buff.battle_cry_deadly_calm.up|buff.cleave.up)
        --actions.cleave+=/rend,if=remains<=duration*0.3
        --actions.cleave+=/bladestorm
        if castable("target", warrior.bladestorm) then
            cast(warrior.bladestorm, "target")
        end
        --actions.cleave+=/cleave
        if castable("target", warrior.cleave) and powerexact("player") > 20 then
            cast(warrior.cleave, "target")
        end
        --actions.cleave+=/whirlwind,if=rage>40|buff.cleave.up
        if castable("target", warrior.whirlwind) and (powerexact("player") > 40 or buff(188923, "player")) then
            cast(warrior.whirlwind, "target")
        end
        --actions.cleave+=/shockwave
        if castable("target", warrior.shockwave) then
            cast(warrior.shockwave, "target")
        end
        --actions.cleave+=/storm_bolt

        --
        --actions.execute=mortal_strike,if=cooldown_react&buff.battle_cry.up&buff.focused_rage.stack=3


        --actions.execute+=/mortal_strike,if=cooldown_react&equipped.archavons_heavy_hand&rage<60

        --actions.execute+=/execute,if=buff.shattered_defenses.down

        --actions.execute+=/bladestorm,interrupt=1,if=raid_event.adds.in>90|!raid_event.adds.exists|spell_targets.bladestorm_mh>desired_targets
        --
        --actions.single=colossus_smash,if=cooldown_react&buff.shattered_defenses.down&(buff.battle_cry.down|buff.battle_cry.up&buff.battle_cry.remains>=gcd)
        if castable("target", warrior.colossussmash) and not buff(warrior.shattereddefenses, "player") then
            cast(warrior.colossussmash, "target")
        end
        --# actions.single+=/heroic_charge,if=rage.deficit>=40&(!cooldown.heroic_leap.remains|swing.mh.remains>1.2)
        --#Remove the # above to run out of melee and charge back in for rage.
        --actions.single+=/focused_rage,if=!buff.battle_cry_deadly_calm.up&buff.focused_rage.stack<3&!cooldown.colossus_smash.up&(rage>=50|debuff.colossus_smash.down|cooldown.battle_cry.remains<=8)
        if castable("target", warrior.focusedrage) and buffstack(warrior.focusedrage, "player") < 3 and spellcd(warrior.colossussmash) > 1 then
            cast(warrior.focusedrage, "target")
        end
        --actions.single+=/mortal_strike,if=cooldown_react&cooldown.battle_cry.remains>8
        if castable("target", warrior.mortalstrike) and spellcd(warrior.battlecry) > 8 then
            cast(warrior.mortalstrike, "target")
        end
        --actions.single+=/execute,if=buff.stone_heart.react
        if castable("target", warrior.execute) and buff(warrior.stoneheart, "player") then
            cast(warrior.execute, "target")
        end
        --actions.single+=/whirlwind,if=spell_targets.whirlwind>1
        --actions.single+=/slam,if=spell_targets.whirlwind=1
        if castable("target", warrior.slam) and powerexact("player") > 40 then
            cast(warrior.slam, "target")
        end
        --actions.single+=/focused_rage,if=equipped.archavons_heavy_hand&buff.focused_rage.stack<3
        --actions.single+=/bladestorm,interrupt=1,if=raid_event.adds.in>90|!raid_event.adds.exists|spell_targets.bladestorm_mh>desired_targets
        --
            end
            --Enemies > 2 but < 5
            if enemysinx(7, "player") >= 2 and enemysinx(7, "player") < 5 then
        --actions+=/run_action_list,name=execute,target_if=target.health.pct<=20&spell_targets.whirlwind<5
        if castable("target", warrior.execute) and (buff(warrior.shattereddefenses, "player") and powerexact("player") > 17 and health("target") < 20) or buff(warrior.stoneheart, "player") then
            cast(warrior.execute, "target")
        end
            if talent(warriort.SweepingStrikes) and castable("target", warrior.cleave) then
                cast(warrior.cleave, "target")
            end
            if castable("target", warrior.mortalstrike) then
                cast(warrior.mortalstrike, "target")
            end
            if castable("target", warrior.colossussmash) and not buff(warrior.shattereddefenses, "player") and not buff(warrior.precisestrikes, "player") then
                cast(warrior.colossussmash, "target")
            end
            if castable("target", warrior.warbreaker) and not buff(warrior.shattereddefenses, "player") then
                cast(warrior.warbreaker, "target")
            end
            --actions.aoe+=/whirlwind,if=talent.fervor_of_battle.enabled&(debuff.colossus_smash.up|rage.deficit<50)&(!talent.focused_rage.enabled|buff.battle_cry_deadly_calm.up|buff.cleave.up)
            if talent(warriort.FervorofBattle) and castable("target", warrior.whirlwind) and (dbuff(warrior.colossussmash, "target") or powerdef("player") < 50) and (not talent(warriort.FocusedRage) or buff(warrior.deadlycalm, "player") or buff(188923, "player")) then
                cast(warrior.whirlwind, "target")
            end
            if castable("target", warrior.bladestorm) then
                cast(warrior.bladestorm, "target")
            end
            if castable("target", warrior.cleave) then
                cast(warrior.cleave, "target")
            end
            if castable("target", warrior.whirlwind) and powerexact("player") > 40 then
                cast(warrior.whirlwind, "target")
            end
            if castable("target", warrior.shockwave) then
                cast(warrior.shockwave, "target")
            end
            end
            --Enemies > 5
            if enemysinx(7, "player") >= 5 then

        if castable("target", warrior.mortalstrike) then
            cast(warrior.mortalstrike, "target")
        end
        if castable("target", warrior.colossussmash) and not buff(warrior.shattereddefenses, "player") and not buff(warrior.precisestrikes, "player") then
            cast(warrior.colossussmash, "target")
        end
        if castable("target", warrior.warbreaker) and not buff(warrior.shattereddefenses, "player") then
            cast(warrior.warbreaker, "target")
        end
        --actions.aoe+=/whirlwind,if=talent.fervor_of_battle.enabled&(debuff.colossus_smash.up|rage.deficit<50)&(!talent.focused_rage.enabled|buff.battle_cry_deadly_calm.up|buff.cleave.up)
        if talent(warriort.FervorofBattle) and castable("target", warrior.whirlwind) and (dbuff(warrior.colossussmash, "target") or powerdef("player") < 50) and (not talent(warriort.FocusedRage) or buff(warrior.deadlycalm, "player") or buff(188923, "player")) then
            cast(warrior.whirlwind, "target")
        end
        if castable("target", warrior.bladestorm) then
            cast(warrior.bladestorm, "target")
        end
        if castable("target", warrior.cleave) then
            cast(warrior.cleave, "target")
        end
        if castable("target", warrior.whirlwind) and powerexact("player") > 40 then
            cast(warrior.whirlwind, "target")
        end
        if castable("target", warrior.shockwave) then
            cast(warrior.shockwave, "target")
        end
            end

end

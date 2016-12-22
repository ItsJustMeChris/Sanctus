function guardianDruidRotation()
    if UnitAffectingCombat("player") then
        if not buff(guardianSpell.Bear_Form, "player") then
            Cast(guardianSpell.Bear_Form)
        end

        --health
        if buff(guardianSpell.Bear_Form, "player") and health("player") <= 80 and GetSpellCharges(guardianSpell.Frenzied_Regeneration) == 2 then
            Cast(guardianSpell.Frenzied_Regeneration)
        end

        if buff(guardianSpell.Bear_Form, "player") and health("player") <= 60 and GetSpellCharges(guardianSpell.Frenzied_Regeneration) == 1 then
            Cast(guardianSpell.Frenzied_Regeneration)
        end

        if buff(guardianSpell.Bear_Form, "player") and health("player") <= 85 and spellcd(guardianSpell.Ironfur) == 0 then
            Cast(guardianSpell.Ironfur)
        end

        if buff(guardianSpell.Bear_Form, "player") and health("player") <= 75 and spellcd(guardianSpell.Mark_of_Ursol) == 0 then
            Cast(guardianSpell.Mark_of_Ursol)
        end

        --Use Moonfire if you have a Galactic Guardian proc (if you have chosen this talent).
        if buff(guardianSpell.Bear_Form, "player") and talent(guardianTalent.Galactic_Guardian) and buff(guardianSpell.Galactic_Guardian, "player") and not buff(guardianSpell.Moonfire, "target") then
            Cast(guardianSpell.Moonfire, "target")
        end
        --Use Mangle on cooldown (its cooldown has a chance to be reset by Gore, so you need to watch out for this).
        if buff(guardianSpell.Bear_Form, "player") and (spellcd(guardianSpell.Mangle) == 0) then
            Cast(guardianSpell.Mangle, "target")
        end
        --Use Thrash on cooldown.
        if buff(guardianSpell.Bear_Form, "player") and (spellcd(guardianSpell.Thrash) == 0) then
            Cast(guardianSpell.Thrash, "target")
        end
        --Apply and maintain Moonfire on the target.

        --Use Swipe.
        if buff(guardianSpell.Bear_Form, "player") and (spellcd(guardianSpell.Swipe) == 0) then
            Cast(guardianSpell.Swipe, "target")
        end
        --Use Maul.
        if buff(guardianSpell.Bear_Form, "player") and (spellcd(guardianSpell.Maul) == 0) then
            Cast(guardianSpell.Maul, "target")
        end
    end
end

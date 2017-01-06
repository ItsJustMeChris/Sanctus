
function frostMageRotation()
  summonpet()
  ------------------------------
  -- Check if artifact is equipped, wait for caching soon
  ------------------------------
  if icehand == nil then
    if artifact(magea.icyhand) then icehand = 1 else icehand = 0 end
  end
  -------------- Combat Rotation Start -------------------------

  ------------------------------
  -- changed to combat
  ------------------------------
  if combat("player") then
    -- Pet Attack
      if not UnitIsUnit("pettarget","target") then
          PetAttack()
      end
    -------------- AOE Start -------------------------
    -- AOE
    -------------- AOE End -------------------------
    -- Ice Lance + Flurry (AMR)
    -------------- CD'S Start -------------------------
    -- CooldownsS
    -- Function in Back end
    -------------- CD'S END -------------------------
    -------------- Rotation 'S Start -------------------------
    -- Frost bolt w/ Water Jet (AMR)
        -- Frostbolt if IsPetCasting(PetWaterElemental, WaterJet)
        if castable(mage.frostbolt, "target") and unitcasting(mage.waterjet, "pet") then
            cast(mage.frostbolt, "pettarget")
        end
        if castable(mage.icelance, "target") and lastspell(mage.frostbolt) then
            cast(mage.icelance, "target")
        end
    -- Water Jet (AMR)
        -- water_jet,if=prev_gcd.frostbolt&buff.fingers_of_frost.stack<(2+artifact.icy_hand.enabled)&buff.brain_freeze.react=0
        if castable(mage.waterjet, "target") and lastspell(mage.frostbolt) and (buffstack(mage.fingersoffrost, "player") < (2 + icehand)) and (buffstack(mage.brainfreeze, "player") == 0)then
            petcast(mage.waterjet, "pettarget")
        end
    -- Ray of Frost (AMR)
        -- ray_of_frost,if=buff.icy_veins.up|(cooldown.icy_veins.remains>action.ray_of_frost.cooldown&buff.rune_of_power.down)
        -- if buff.icyVeins.exists or (cd.icyVeins > getCastTime(spell.rayOfFrost) and buff.runeOfPower.exists) then
        -- RayOfFrost if HasBuff(IcyVeins)
        if talent(maget.RayofFrost) and castable(mage.rayoffrost, "target") and buff(mage.icyveins, "player")then -- OR LOGIC HALF DONE TODO
            cast(mage.rayoffrost, "target")
        end
    -- Flurry
        -- Spell Flurry if HasBuff(BrainFreeze) and ((not HasBuff(FingersOfFrost) and not HasTalent(GlacialSpike)) or (HasTalent(GlacialSpike) and WasLastCast(Frostbolt)))
        -- SimC | actions+=/flurry,if=buff.brain_freeze.react&buff.fingers_of_frost.react=0&prev_gcd.frostbolt
        if castable(mage.flurry, "target") and buff(mage.brainfreeze, "player") and (buffstack(mage.fingersoffrost, "player") == 0)then
        -- and lastspell()
              cast(mage.flurry, "target")
        end
    -- Frozen Touch
        -- SimC | actions+=/frozen_touch,if=buff.fingers_of_frost.stack<=(0+artifact.icy_hand.enabled)&((cooldown.icy_veins.remains>30&talent.thermal_void.enabled)|!talent.thermal_void.enabled)
        if talent(maget.FrozenTouch) and castable(mage.frozentouch, "target") and
        buffstack(mage.fingersoffrost, "player") <= (0 + icehand) and
        (spellcd(mage.icyveins) > 30 and talent(maget.ThermalVoid)) or
        not talent(maget.ThermalVoid)then
            cast(mage.frozentouch, "player")
        end
    -- Frost Bomb
        -- SimC | actions+=/frost_bomb,if=debuff.frost_bomb.remains<action.ice_lance.travel_time&buff.fingers_of_frost.react>0
        if talent(maget.FrostBomb) and castable(mage.frostbomb, "target") and dbufftime(mage.frostbomb, "target") < 2 and (buffstack(mage.fingersoffrost, "player") > 0) then
            cast(mage.frostbomb, "target")
        end
    -- Ice Lance
        -- SimC | actions+=/ice_lance,if=buff.fingers_of_frost.react>0&cooldown.icy_veins.remains>10|buff.fingers_of_frost.react>2
        if  castable(mage.icelance, "target") and ((buffstack(mage.fingersoffrost, "player") > 0) and (spellcd(mage.icyveins) > 10)) or (buffstack(mage.fingersoffrost, "player") > 2)then
                cast(mage.icelance, "target")
        end
    -- Frozen Orb
        -- SimC | actions+=/frozen_orb
        if castable(mage.frozenorb, "target")then
            cast(mage.frozenorb, "target")
        end
    --Ice Nova
        -- SimC | actions+=/ice_nova
        if talent(maget.IceNova) and castable(mage.icenova, "target")then
            cast(mage.icenova, "target")
        end
    --Comet Storm
        -- SimC | actions+=/comet_storm
        if talent(maget.CometStorm) and castable(mage.cometstorm, "target")then
            cast(mage.cometstorm, "target")
        end
    -- Blizzard
        -- SimC | actions+=/blizzard,if=talent.arctic_gale.enabled|active_enemies>1|((buff.zannesu_journey.stack>4|buff.zannesu_journey.remains<cast_time+1)&equipped.133970)
    -- Ebonbolt
        -- SimC | actions+=/ebonbolt,if=buff.fingers_of_frost.stack<=(0+artifact.icy_hand.enabled)
        if buffstack(mage.fingersoffrost, "player") <= (0 + icehand)then
            cast(mage.ebonbolt, "target")
        end
    -- Glacial Spike
        -- SimC | actions+=/glacial_spike
        if talent(maget.GlacialSpike) and castable(mage.glacialspike, "target")then
            cast(mage.glacialspike, "target")
        end
    -- Frostbolt
        -- SimC | actions+=/frostbolt
        if castable(mage.frostbolt, "target") then
            cast(mage.frostbolt, "target")
        end
  end
  -------------- Combat Rotation Start -------------------------
end

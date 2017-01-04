function frostMageRotation()
  -------------- Variables -------------------------
    if artifact(magea.icyhand) then icehand = 1 else icehand = 0 end
  -------------- Rotation 'S Start -------------------------
  -- Pet Attack
    if not UnitIsUnit("pettarget","target") then
    PetAttack()
    end
  -------------- AOE Start -------------------------
  -- AOE
  -------------- AOE End -------------------------
  -- Ice Lance + Flurry (AMR)
  -- Function in Back end
  -------------- CD'S Start -------------------------
  -- Cooldowns
  -- Function in Back end
  -------------- CD'S END -------------------------
  -------------- Rotation 'S Start -------------------------
  -- Frost bolt w/ Water Jet (AMR)
      -- Frostbolt if IsPetCasting(PetWaterElemental, WaterJet)
  -- Water Jet (AMR)
      -- water_jet,if=prev_gcd.frostbolt&buff.fingers_of_frost.stack<(2+artifact.icy_hand.enabled)&buff.brain_freeze.react=0
      -- WaterJet if BuffStack(FingersOfFrost) < BuffMaxStack(FingersOfFrost) and WasLastCast(Frostbolt) and not HasBuff(BrainFreeze) and not HasTalent(GlacialSpike)
  -- Ray of Frost (AMR)
      -- ray_of_frost,if=buff.icy_veins.up|(cooldown.icy_veins.remains>action.ray_of_frost.cooldown&buff.rune_of_power.down)
      -- if buff.icyVeins.exists or (cd.icyVeins > getCastTime(spell.rayOfFrost) and buff.runeOfPower.exists) then
      -- RayOfFrost if HasBuff(IcyVeins)

  -- Flurry
      -- Spell Flurry if HasBuff(BrainFreeze) and ((not HasBuff(FingersOfFrost) and not HasTalent(GlacialSpike)) or (HasTalent(GlacialSpike) and WasLastCast(Frostbolt)))
      -- SimC | actions+=/flurry,if=buff.brain_freeze.react&buff.fingers_of_frost.react=0&prev_gcd.frostbolt
  -- Frozen Touch
      -- SimC | actions+=/frozen_touch,if=buff.fingers_of_frost.stack<=(0+artifact.icy_hand.enabled)&((cooldown.icy_veins.remains>30&talent.thermal_void.enabled)|!talent.thermal_void.enabled)
  -- Frost Bomb
      -- SimC | actions+=/frost_bomb,if=debuff.frost_bomb.remains<action.ice_lance.travel_time&buff.fingers_of_frost.react>0
  -- Ice Lance
      -- SimC | actions+=/ice_lance,if=buff.fingers_of_frost.react>0&cooldown.icy_veins.remains>10|buff.fingers_of_frost.react>2
  -- Frozen Orb
      -- SimC | actions+=/frozen_orb
      if castable("target", mage.frozenorb)then
          cast(mage.frozenorb, "target")
      end
  --Ice Nova
      -- SimC | actions+=/ice_nova
      if talent(maget.IceNova) and castable("target", mage.icenova)then
          cast(mage.icenova, "target")
      end
  --Comet Storm
      -- SimC | actions+=/comet_storm
      if talent(maget.CometStorm) and castable("target", mage.cometstorm)then
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
      if talent(maget.GlacialSpike) and castable("target", mage.glacialspike)then
          cast(mage.glacialspike, "target")
  -- Frostbolt
      -- SimC | actions+=/frostbolt
      if castable("target", mage.frostbolt) then
          cast(mage.frostbolt, "target")
      end
end

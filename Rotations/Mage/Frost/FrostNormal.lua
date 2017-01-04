function frostMageRotation()
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
  -- Glacial Spike
  -- Flurry
      -- Spell Flurry if HasBuff(BrainFreeze) and ((not HasBuff(FingersOfFrost) and not HasTalent(GlacialSpike)) or (HasTalent(GlacialSpike) and WasLastCast(Frostbolt)))
  -- Frozen Touch
      -- FrozenTouch if BuffStack(FingersOfFrost) < BuffMaxStack(FingersOfFrost) - 2
  -- Frost Bomb
      -- Frost bomb, if Frost bomb is not up on the target. and we have 2 fingersOfFrost
      --frost_bomb,if=debuff.frost_bomb.remains<action.ice_lance.travel_time&buff.fingers_of_frost.react>0
  -- Ice Lance NO GS (AMR)
      -- ice_lance,if=buff.fingers_of_frost.react>0&cooldown.icy_veins.remains>10|buff.fingers_of_frost.react>2
      -- IceLance if ((HasBuff(FingersOfFrost) and CooldownSecRemaining(IcyVeins) > 10) or BuffStack(FingersOfFrost) = BuffMaxStack(FingersOfFrost)) and not HasTalent(GlacialSpike)
  -- Ice Lance w/ GS (AMR)
      -- ice_lance,if=buff.fingers_of_frost.react>0&cooldown.icy_veins.remains>10|buff.fingers_of_frost.react>2
      -- IceLance if HasTalent(GlacialSpike) and HasBuff(FingersOfFrost) and BuffStack(ChainReaction) = BuffMaxStack(ChainReaction)
  -- Frozen Orb
      -- Cast frozen_orb on Cd
      if castable("target", mage.frozenorb)then
          cast(mage.frozenorb, "target")
      end
  --Ice Nova
      -- ice_nova
      if talent(maget.IceNova) and castable("target", mage.icenova)then
          cast(mage.icenova, "target")
      end
  --Comet Storm
      -- comet_storm
      if talent(maget.CometStorm) and castable("target", mage.cometstorm)then
          cast(mage.cometstorm, "target")
      end
  -- Ebonbolt (AMR)
      -- Ebonbolt if BuffStack(FingersOfFrost) < BuffMaxStack(FingersOfFrost) - 2 and not HasTalent(GlacialSpike)
      if buff(mage.fingersoffrost, "player")
  -- Frostbolt
      -- frostbolt
      if castable("target", mage.frostbolt) then
          cast(mage.frostbolt, "target")
      end
end

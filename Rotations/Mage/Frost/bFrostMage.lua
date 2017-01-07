function summonpet ()
  if IsPetActive() then
    --Debug("Pet is active")
    else
    -- Debug("No Pet active ... Summoning")
    CastSpellByName("Summon Water Elemental", "")
  end
end

-- Cooldowns
function cooldowns ()
  --  actions.cooldowns=rune_of_power,if=cooldown.icy_veins.remains<cast_time|charges_fractional>1.9&cooldown.icy_veins.remains>10|buff.icy_veins.up|target.time_to_die.remains+5<charges_fractional*10
      if talent(maget.RuneofPower) and castable(mage.runeofpower, "player")and
      (spellcd(mage.icyveins) < casttime(mage.runeofpower))or
      (charges(mage.runeofpower) > 1.9 and spellcd(mage.icyveins) > 10)or
      buff(mage.icyveins, "player")then
      -- or (ttd("target")+5 < charges(mage.runeofpower)*10)then
          cast(mage.runeofpower, "player")
      end
  --  actions.cooldowns+=/potion,name=potion_of_prolonged_power,if=cooldown.icy_veins.remains<1
      -- TODO Pot support
  --  actions.cooldowns+=/icy_veins,if=buff.icy_veins.down
      if castable(mage.icyveins, "player") and not buff(mage.icyveins, "player")then
        cast(mage.icyveins, "player")
      end
  --  actions.cooldowns+=/mirror_image
      if talent(maget.MirrorImage) and castable(mage.mirrorimage, "player")then
          cast(mage.mirrorimage, "player")
      end
  --  actions.cooldowns+=/blood_fury
      -- TODO
  --  actions.cooldowns+=/berserking
      -- TODO
  --  actions.cooldowns+=/arcane_torrent
      -- TODO
end

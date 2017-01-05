function summonpet ()
  if IsPetActive() then
    Debug("Pet is active")
    else
    Debug("No Pet active ... Summoning")
    CastSpellByName("Summon Water Elemental", "")
  end
end

-- Cooldowns
function cooldowns ()
  --  actions.cooldowns=rune_of_power,if=cooldown.icy_veins.remains<cast_time|charges_fractional>1.9&cooldown.icy_veins.remains>10|buff.icy_veins.up|target.time_to_die.remains+5<charges_fractional*10
  --  actions.cooldowns+=/potion,name=potion_of_prolonged_power,if=cooldown.icy_veins.remains<1
  --  actions.cooldowns+=/icy_veins,if=buff.icy_veins.down
  --  actions.cooldowns+=/mirror_image
  --  actions.cooldowns+=/blood_fury
  --  actions.cooldowns+=/berserking
  --  actions.cooldowns+=/arcane_torrent
end

function ttd(target)
    local life = healthExact(target)
    if life == 0 then
        return 0
  else
    local time = timenow-timestart
    local hp_diff = first_life-current_life
    if hp_diff > 0 then
      -- Rule of three (Dreisatz):
      -- If in a given timespan a certain value of damage is done, what timespan is needed to do 100% damage?
      -- The longer the timespan the more precise the prediction
      -- time_diff/hp_diff = x/first_life_max
      -- x = time_diff*first_life_max/hp_diff
      local full_time = time_diff*first_life_max/hp_diff
      --if unit was not at 100% at first time seen this is very important we need to calculate backwards in time then too
      -- second rule of three needed
      --if first_life == max life this will be 0 but otherwise a time will be the result
      local past_first_time = (first_life_max-first_life)*time_diff/hp_diff
      calc_time = first_time-past_first_time+full_time-current_time
      --SecondsToTime can only display values >= 1
      if calc_time < 1 then
        calc_time = 1
      end
      local time_to_die = SecondsToTime(calc_time)
      local fight_length
      local dps
      if show_dps == 1 then
        dps = floor(hp_diff/time_diff)
        dps = " (DPS "..dps..")"
      else
        dps = ""
      end
      if show_fightlength == 1 then
        fight_length = SecondsToTime(full_time)
        fight_length = " after "..fight_length
      else
        fight_length = ""
      end
      last_string = "TTD: "..UnitName("target").." dies in "..time_to_die..fight_length..dps
      am(last_string)

    elseif hp_diff < 0 then
      --unit has healed, reseting the initial values
      first_life = current_life
      first_time = current_time
      am("TTD: "..UnitName("target").." has healed. :/")
    else
      if current_life == first_life_max then
        --since unit is at full health we can reset the time and hp values
        --thus data will be tracked from the point on when the unit starts to loose life
        first_life = current_life
        first_time = current_time
        am("TTD: "..UnitName("target").." is at full health.")
      else
        --no damage occured in the timespan
        --do nothing but wait
      end
    end
  end
end

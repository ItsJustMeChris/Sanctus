--BEST OPEN WORLD BUILD
--
--Level 15: Overpower Icon Overpower/Sweeping Strikes Icon Sweeping Strikes
--Level 30: Double Time Icon Double Time
--Level 45: Fervor of Battle Icon Fervor of Battle
--Level 60: Second Wind Icon Second Wind
--Level 75: In For The Kill Icon In For The Kill/Mortal Combo Icon Mortal Combo
--Level 90: Trauma Icon Trauma
--Level 100: Opportunity Strikes Icon Opportunity Strikes
--2.2. Dungeons and Raids
--
--BEST SINGLE AND MULTI TARGET GROUP BUILD
--
--Level 15: Overpower Icon Overpower
--Level 30: Double Time Icon Double Time
--Level 45: Fervor of Battle Icon Fervor of Battle
--Level 60: Bounding Stride Icon Bounding Stride
--Level 75: In For The Kill Icon In For The Kill
--Level 90: Trauma Icon Trauma
--Level 100: Opportunity Strikes Icon Opportunity Strikes
--2.3. Advanced Build
--
--MOST POWERFUL SINGLE AND TWO MOB BUILD
--
--Level 15: Dauntless Icon Dauntless
--Level 30: Double Time Icon Double Time
--Level 45: Avatar Icon Avatar
--Level 60: Bounding Stride Icon Bounding Stride
--Level 75: Focused Rage Icon Focused Rage
--Level 90: Deadly Calm Icon Deadly Calm
--Level 100: Anger Management Icon Anger Management

function charge(target)
    if distance("player", target) ~= nil then
        if UnitExists(target) then
            if distance("player", target) > 8 and distance("player", target) < 25 then
                return true
            else return false
            end
        end
    end
end

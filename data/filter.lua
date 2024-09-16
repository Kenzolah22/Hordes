-- 1 Affix = Red, 2 Affixes = Orange, 3 Affixes = Green

local filter = {}

filter.helm_affix_filter = {
    { sno_id = 1927659, affix_name = "Ranks to Unstable Elixir" },
    { sno_id = 1927640, affix_name = "Ranks to Trick Attacks" },
    { sno_id = 1829558, affix_name = "Crowd Control Duration" },
}

filter.chest_affix_filter = {
    { sno_id = 1829562, affix_name = "Dexterity" },
    { sno_id = 1873229, affix_name = "Ranks To Dark Shroud", required = true },
    { sno_id = 1829592, affix_name = "Max. Life" },
    { sno_id = 1834296, affix_name = "Resistance to All Elements" },
}

filter.gloves_affix_filter = {
    { sno_id = 1829586, affix_name = "Critical Strike Damage "},
    { sno_id = 1829582, affix_name = "Critical Strike Chance" },
    { sno_id = 1829596, affix_name = "Lucky Hit Chance" },
    { sno_id = 1829560, affix_name = "Cooldown Reduction" },
    { sno_id = 1928751, affix_name = "Ranks to Basic Skills" },
    { sno_id = 1829556, affix_name = "Attack Speed" },
}


filter.pants_affix_filter = {
    { sno_id = 1829562, affix_name = "Dexterity", required = true },
    { sno_id = 1829592, affix_name = "Max. Life", required = true },
    { sno_id = 1829554, affix_name = "Armor", required = true },
}

filter.boots_affix_filter = {
    { sno_id = 1829562, affix_name = "Dexterity", required = true },
    { sno_id = 1829598, affix_name = "Movement Speed", required = true },
    { sno_id = 1834117, affix_name = "Dodge Chance" },
}

filter.two_hand_weapons_affix_filter = {
    { sno_id = 1829562, affix_name = "Dexterity" },
    { sno_id = 1829592, affix_name = "Max. Life" },
    { sno_id = 1829590, affix_name = "Damage Over Time" },
    { sno_id = 1829586, affix_name = "Critical Strike Damage" },
}

filter.one_hand_weapons_affix_filter = {
    { sno_id = 1829562, affix_name = "Dexterity" },
    { sno_id = 1834112, affix_name = "Vulnerable Damage" },
    { sno_id = 1829556, affix_name = "Attack Speed" },
    { sno_id = 1829578, affix_name = "All Stat" },
    { sno_id = 1928751, affix_name = "Ranks to Basic Skills" },
}

filter.amulet_affix_filter = {
    { sno_id = 1927653, affix_name = "Alchemical Advantage" },
    { sno_id = 1927657, affix_name = "Frigid Finesse" },
    { sno_id = 1927681, affix_name = "Unstable Elixirs" },
}

filter.ring_affix_filter = {
    { sno_id = 1829562, affix_name = "Dexterity", required = true },
    { sno_id = 1829590, affix_name = "Damage Over Time" },
    { sno_id = 1829596, affix_name = "Lucky Hit Chance", required = true },
}

-- Weapon filters (Direct)
filter.focus_weapons_affix_filter = {
    { sno_id = 1829562, affix_name = "Dexterity", required = true },
    { sno_id = 1829592, affix_name = "Max. Life" },
    { sno_id = 1829590, affix_name = "Damage Over Time", required = true },
    { sno_id = 1829586, affix_name = "Critical Strike Damage" },
}

filter.dagger_weapons_affix_filter = {
    { sno_id = 1829562, affix_name = "Dexterity", required = true },
    { sno_id = 1829592, affix_name = "Max. Life" },
    { sno_id = 1829590, affix_name = "Damage Over Time", required = true },
    { sno_id = 1829586, affix_name = "Critical Strike Damage" },
}


filter.shield_weapons_affix_filter = {

}

-- Color coding logic
function get_color(affix_count)
    if affix_count >= 3 then
        return "green"
    elseif affix_count == 2 then
        return "yellow"
    else
        return "red"
    end
end

function filter_items(item, affix_filter)
    local match_count = 0
    for _, affix in ipairs(affix_filter) do
        if item:has_affix(affix.sno_id) then
            match_count = match_count + 1
        end
    end
    return get_color(match_count)
end

return filter
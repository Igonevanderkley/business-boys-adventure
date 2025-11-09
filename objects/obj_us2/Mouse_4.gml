if (obj_controller.money >= cost) {
    obj_controller.money -= cost;

    // Apply bonus
    if (upgrade_type == "click") obj_controller.money_per_click += bonus;
    else obj_controller.money_per_second += bonus;

    amount_bought += 1;
    cost = round(cost * 1.15);

    // Function to get sprite dynamically
    function get_desk_sprite(desk_prefix, level) {
        var sprite_name = desk_prefix + string(level); // e.g., "sDeskVR1"
        var spr_index = asset_get_index(sprite_name);
        if (spr_index != -1) return spr_index;
        else return noone;
    }

    // Update VR desk
    with (obj_deskVR) {
        if (upgrade_level < other.upgrade_level) {
            upgrade_level = other.upgrade_level; // highest upgrade applied
            var spr = get_desk_sprite("sDeskVR", upgrade_level);
            if (spr != noone) sprite_index = spr;
        }
    }

    // Update VL desk
    with (obj_deskVL) {
        if (upgrade_level < other.upgrade_level) {
            upgrade_level = other.upgrade_level;
            var spr = get_desk_sprite("sDeskVL", upgrade_level);
            if (spr != noone) sprite_index = spr;
        }
    }
}

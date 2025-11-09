if (obj_controller.money >= cost_to_rebirth) {
    obj_controller.money = 0;
    obj_controller.money_per_second = 1;
	obj_controller.money_per_click = 1;
	obj_controller.bonus_multiplier = 1;

    with (obj_u1) {
    cost = 10;
}
    with (obj_u2) {
    cost = 20;
}
    with (obj_u3) {
    cost = 80;
}
    with (obj_u4) {
    cost = 160;
}
    with (obj_u5) {
    cost = 480;
}
    with (obj_u6) {
    cost = 640;
}
    with (obj_u7) {
    cost = 1920;
}
    with (obj_u8) {
    cost = 5120;
}
    with (obj_u9) {
    cost = 5760;
}
    with (obj_u10) {
    cost = 17280;
}
    with (obj_hireup) {
    cost = 100;
}
    with (obj_hireup2) {
    cost = 1200;
}
    with (obj_hireup3) {
    cost = 8500;
}
    obj_controller.rebirth_count += 1;
    obj_controller.rebirth_multiplier *= bonus_multiplier;

    cost_to_rebirth = round(cost_to_rebirth * 2);

    show_debug_message("Rebirth! x" + string(obj_controller.rebirth_multiplier) + " income!");
}

    // --- Change the NPC sprite ---
    with (obj_businessboy) {
        sprite_index = sBusinessMan; // replace with the new sprite
	}
	
with (obj_mannetje1) visible = false;
with (obj_mannetje2) visible = false;
with (obj_mannetje3) visible = false;
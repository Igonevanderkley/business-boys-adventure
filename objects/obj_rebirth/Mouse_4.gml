if (obj_controller.money >= cost_to_rebirth) {
    obj_controller.money = 0;
    obj_controller.money_per_second = 1;
	obj_controller.money_per_click = 1

    with (obj_upgrade) {
    amount = 0;
}


    obj_controller.rebirth_count += 1;
    obj_controller.rebirth_multiplier *= bonus_multiplier;

    cost_to_rebirth = round(cost_to_rebirth * 2);

    show_debug_message("Rebirth! x" + string(obj_controller.rebirth_multiplier) + " income!");
}

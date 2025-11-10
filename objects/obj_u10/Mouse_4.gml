if (obj_controller.money >= cost) {
    // Deduct money
    obj_controller.money -= cost;

    // Apply the bonus (click or per second)
    if (upgrade_type == "click")
        obj_controller.money_per_click += bonus;
    else
        obj_controller.money_per_second += bonus;

    amount_bought += 1;
    cost = round(cost * 1.15);

    // --- Change the NPC sprite ---
    with (obj_mannetje1) {
        sprite_index = sMannetje10; // replace with the new sprite
    }
	 with (obj_mannetje2) {
        sprite_index = sMannetje20; // replace with the new sprite
    }
	 with (obj_mannetje3) {
        sprite_index = sMannetje30; // replace with the new sprite
    }
}

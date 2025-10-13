if (obj_controller.money >= cost) {
    obj_controller.money -= cost;
	
	if (upgrade_type == "click") {
        obj_controller.money_per_click += bonus;
    } else {
        obj_controller.money_per_second += bonus;
    }
	
    amount_bought += 1;
    cost = round(cost * 1.15);
}

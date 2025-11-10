if (!visible) exit; 

if (obj_controller.money >= cost) {
    obj_controller.money -= cost;
	
switch (upgrade_type) {
    case "click":
        obj_controller.money_per_click += bonus;
        break;

    case "multiplier":
        obj_controller.bonus_multiplier *= bonus_multiplier;
        break;
}

    cost = round(cost * 1.2);
}

obj_controller.upgrade2_purchased = true;
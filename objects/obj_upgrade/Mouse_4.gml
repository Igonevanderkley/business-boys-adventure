if (obj_controller.money >= cost) {
    obj_controller.money -= cost;
	with (obj_deskVR) { 
	upgrade_level += 1;
	} 
	with (obj_deskVL) { 
	upgrade_level += 1;
	} 
	
	if (upgrade_type == "click") {
        obj_controller.money_per_click += bonus;
    } else {
        obj_controller.money_per_second += bonus;
    }
	
    amount_bought += 1;
    cost = round(cost * 1.15);
	
	if (!sprite_changed) {
		var_level = upgrade_level;
        with (obj_deskVR) {
            switch (other.upgrade_level) {
                case 1: sprite_index = sDeskVRpaper; break;
                case 2: sprite_index = sDeskVRcomp; break;
                case 3: sprite_index = sDeskVRmouse; break;
                case 4: sprite_index = sDeskVRprint; break;
            }
			with (obj_deskVL) {
            switch (other.upgrade_level) {
                case 1: sprite_index = sDeskVLpaper; break;
                case 2: sprite_index = sDeskVLcomp; break;
                case 3: sprite_index = sDeskVLmouse; break;
                case 4: sprite_index = sDeskVLprint; break;
            }
       }

        sprite_changed = true;
    }
}
}
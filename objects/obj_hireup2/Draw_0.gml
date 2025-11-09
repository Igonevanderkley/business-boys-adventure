if (visible) {
draw_self()
    draw_text(x + 20, y + 30, "Kost: " + string(cost));
	 draw_text(x + 20, y + 10, "Boost: x" + string(bonus_multiplier));
	 var current_mult = round(obj_controller.bonus_multiplier * 100) / 100;
draw_text(x + 20, y + 50, "Current: x" + string(current_mult));

}

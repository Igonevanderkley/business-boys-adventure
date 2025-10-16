draw_set_color(c_white);
draw_text(x, y, "🔁 Rebirth (" + string(obj_controller.rebirth_count) + "x)");
draw_text(x, y + 20, "Kost: " + string(cost_to_rebirth));
draw_text(x, y + 40, "Bonus: x" + string_format(obj_controller.rebirth_multiplier, 0, 2));

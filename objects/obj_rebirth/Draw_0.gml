draw_self()
draw_set_color(c_black);
draw_text(x, y + 52, "🔁 Rebirth (" + string(obj_controller.rebirth_count) + "x)");
draw_text(x, y + 2, "Kost: " + string(cost_to_rebirth));
draw_text(x, y + 18, "Bonus: x" + string_format(obj_controller.rebirth_multiplier, 0, 2));
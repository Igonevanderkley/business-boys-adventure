draw_self();
draw_set_color(c_black);
draw_text(x, y + sprite_height + 5,
    string(upgrade_type) + " +" + string(bonus) +
    " | Kost: " + string(cost));

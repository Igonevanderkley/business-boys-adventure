draw_set_font(fnt_panel);
draw_set_color(c_white);

// Draw panel background
draw_rectangle(panel_x, panel_y, panel_x + panel_width, panel_y + panel_height, false);

// Draw current question and options
if (current_question >= 0 && current_question < array_length(questions)) {
    var q = questions[current_question];
    draw_set_color(c_black);
    draw_text(panel_x + 20, panel_y + 10, q[0]);

    for (var i = 0; i < array_length(q[1]); i++) {
        draw_text(panel_x + 40, panel_y + 40 + i * 20, string(i+1) + ": " + q[1][i]);
    }

    draw_text(panel_x + 20, panel_y + panel_height - 20, "Press 1-4 to answer");
}

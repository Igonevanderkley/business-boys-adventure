/// Draw Event: obj_questionPanel

// Get GUI size
var scr_w = display_get_gui_width();
var scr_h = display_get_gui_height();

// Panel size
var panel_width = 520;
var panel_height = 160;

// Center panel on screen bottom
var panel_x = (scr_w / 2) - (panel_width / 2);
var panel_y = scr_h - panel_height - 20;

// Draw background panel
draw_set_font(fnt_panel);
draw_set_color(c_white);
draw_rectangle(panel_x, panel_y, panel_x + panel_width, panel_y + panel_height, false);

// Make sure current_question is valid before drawing
if (current_question >= 0 && current_question < array_length(questions)) {

    var q = questions[current_question];
    draw_set_color(c_black);

    // Draw the question text
    draw_text(panel_x + 20, panel_y + 10, q[0]);

    // Draw each answer option
    for (var i = 0; i < array_length(q[1]); i++) {
        draw_text(panel_x + 40, panel_y + 40 + i * 20, string(i + 1) + ": " + q[1][i]);
    }

    // Draw instruction text
    draw_text(panel_x + 20, panel_y + panel_height - 20, "Kies 1, 2, 3 or 4 om de vraag te beantwoorden");
}
else {
    // Optional: end message when all questions answered
    draw_set_color(c_black);
    draw_text(panel_x + 10, panel_y + 15, "Je hebt alle vragen goed!");
}

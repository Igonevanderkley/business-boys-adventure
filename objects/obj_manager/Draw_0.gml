if (obj_questionPanel != noone) {
    // Get the panel instance
    var panel = instance_find(obj_questionPanel, 0);

    // Only draw if there is a message
    if (panel.result_message != "") {
        draw_set_font(fnt_large_thick);
        draw_set_color(panel.result_message == "Correct!" ? c_green : c_red);          
        draw_text(bridge_x, bridge_y - 50, panel.result_message);
    }
}

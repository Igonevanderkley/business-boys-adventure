// Only draw panel messages
if (obj_questionPanel != noone) {
    var panel = instance_find(obj_questionPanel, 0);
    if (panel.result_message != "") {
        draw_set_font(fnt_large_thick);
        draw_set_color(panel.result_message == "Correct!" ? c_green : c_red);          
        draw_text(bridge_x, bridge_y - 50, panel.result_message);
    }
}

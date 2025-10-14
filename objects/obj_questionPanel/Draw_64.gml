var scr_w = display_get_gui_width();
var scr_h = display_get_gui_height();

//panel size
var panel_width = 520;
var panel_height = 160;

// center panel
// panel begint bij helft van screen width min de helft van de panel
var panel_x = (scr_w / 2) - (panel_width / 2);
var panel_y = scr_h - panel_height - 20; 

draw_set_color(c_white);
draw_rectangle(panel_x, panel_y, panel_x + panel_width, panel_y + panel_height, false);

var q = questions[current_question];
draw_set_color(c_black);
draw_text(panel_x + 20, panel_y + 10, q[0]);

for (var i = 0; i < array_length(q[1]); i++) {
		draw_text(panel_x + 40, panel_y + 40 + i * 20, string(i + 1) + ": " + q[1][i]);
	}     
	
draw_text(panel_x + 20, panel_y + panel_height - 20, "Press 1, 2, 3 or 4 to answer");

if (result_message != "") {
    draw_text(panel_x + panel_width - 120, panel_y + 10, result_message);
}
var m = obj_controller.money;
var per_click = obj_controller.money_per_click;
var per_second = obj_controller.money_per_second;

draw_set_color(c_black);
draw_set_font(-1); 
draw_text(20, 20, "💰 Geld: " + string(floor(m)));
draw_text(20, 40, "Per klik: " + string(per_click));
draw_text(20, 60, "Per seconde: " + string(per_second));
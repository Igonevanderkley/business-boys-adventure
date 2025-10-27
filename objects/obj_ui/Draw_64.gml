var m = obj_controller.money;
var per_click = obj_controller.money_per_click;
var per_second = obj_controller.money_per_second;

draw_set_color(c_black);
draw_set_font(-1); 
draw_text(320, 60, "💰 Geld: " + string(floor(m)));
draw_text(320, 80, "Per klik: " + string(per_click));
draw_text(320, 100, "Per seconde: " + string(per_second));
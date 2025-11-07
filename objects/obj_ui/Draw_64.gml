// In the Draw event of your object

// Get values
var m = obj_controller.money;
var per_click = obj_controller.money_per_click;
var per_second = obj_controller.money_per_second;

// Text color and font
draw_set_color(c_black);
draw_set_font(-1);

// Calculate position (left of this object)
var tx = x - 120; // 200 pixels to the left
var ty = y + 38;       // same vertical level

// Draw the text
draw_text(tx, ty - 32, "Geld:" + string(floor(m)));
draw_text(tx, ty,       "$/klik: " + string(per_click));
draw_text(tx, ty + 32,  "$/seconde: " + string(per_second));

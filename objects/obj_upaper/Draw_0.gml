// Draw the button sprite
draw_self();

// === Text setup ===
var text_line1 = "Papier" 
var text_line2 = string(upgrade_type) + " +" + string(bonus);
var text_line3 = "Kost: " + string(cost);

// Left-aligned text margin inside the button
var margin_x = x + sprite_width * 0.1; // 10% padding from left
var cy = y + sprite_height / 2;        // vertical center

// === Auto-scale based on widest line ===
var scale = 1;
var max_width = sprite_width * 0.8;   // keep a margin
var max_height = sprite_height * 0.8;

var text_w = max(string_width(text_line1), string_width(text_line2));
var text_h = string_height(text_line1) + string_height(text_line2);

// Scale down if needed
if (text_w > max_width || text_h > max_height) {
    var width_scale = max_width / text_w;
    var height_scale = max_height / text_h;
    scale = min(width_scale, height_scale);
}

// === Draw setup ===
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

// Shadow (optional)
draw_set_color(c_black);
draw_text_transformed(margin_x + 1, cy - 6 * scale + 1, text_line1, scale, scale, 0);
draw_text_transformed(margin_x + 1, cy + 10 * scale + 1, text_line2, scale, scale, 0);

// White main text
draw_set_color(c_white);
draw_text_transformed(margin_x, cy - 6 * scale, text_line1, scale, scale, 0);
draw_text_transformed(margin_x, cy + 10 * scale, text_line2, scale, scale, 0);

// Reset alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);

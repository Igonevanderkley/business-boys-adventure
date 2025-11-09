// Draw the button sprite
draw_self();

// === Text setup ===
var text_lines = [
    "Bureaustoel",
    "Geld:" + string(upgrade_type) + string(bonus),
    "Kost:" + string(cost)
];

// Left-aligned text margin inside the button
var margin_x = x + sprite_width * 0.1; // 10% padding from left
var max_width = sprite_width * 0.8;    // max width inside button
var max_height = sprite_height * 0.8;  // max height inside button
var top_margin = sprite_height * 0.2;  // 10% space above top line

// === Compute the maximum width and total height of the lines ===
var text_w = 0;
var text_h = 0;
for (var i = 0; i < array_length(text_lines); i++) {
    text_w = max(text_w, string_width(text_lines[i]));
    text_h += string_height(text_lines[i]);
}

// Compute scale to fit both width and height
var scale = 1;
if (text_w > max_width || text_h > max_height - top_margin) {
    var width_scale = max_width / text_w;
    var height_scale = (max_height - top_margin) / text_h;
    scale = min(width_scale, height_scale);
}

// === Draw setup ===
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

// Compute total height after scaling
var total_height = 0;
for (var i = 0; i < array_length(text_lines); i++) {
    total_height += string_height(text_lines[i]) * scale;
}

// Starting Y position with top margin
var start_y = y + top_margin + (sprite_height - top_margin - total_height) / 2;

// Draw each line with shadow and main text
var y_offset = 0;
for (var i = 0; i < array_length(text_lines); i++) {
    var line = text_lines[i];
    var line_h = string_height(line) * scale;

    // Shadow
    draw_set_color(c_black);
    draw_text_transformed(margin_x + 1, start_y + y_offset + 1, line, scale, scale, 0);

    // Main text
    draw_set_color(c_white);
    draw_text_transformed(margin_x, start_y + y_offset, line, scale, scale, 0);

    y_offset += line_h; // move down for next line
}

// Reset alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);

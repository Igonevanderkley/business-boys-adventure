if (visible) {
    draw_set_font(fnt_panel_large);
    draw_set_color(color);

    var text_w = string_width(text);
    var text_h = string_height(text);

    // Padding around text
    var pad_x = 50;
    var pad_y = 100; // increased vertical padding for better fit

    var box_w = text_w + pad_x * 2;
    var box_h = text_h + pad_y * 2;

    if (sprite_index != -1) {
        var spr_w = sprite_get_width(sprite_index);
        var spr_h = sprite_get_height(sprite_index);

        // Scale to fit text width and height dynamically
        var scale_x = box_w / spr_w;
        var scale_y = box_h / spr_h;

        // Draw centered background sprite
        draw_sprite_ext(sprite_index, 0, x, y, scale_x, scale_y, 0, c_white, 1);
    } else {
        // Fallback rectangle
        draw_set_color(c_black);
        draw_rectangle(x - box_w / 2, y - box_h / 2, x + box_w / 2, y + box_h / 2, false);
    }

    // Text shadow for contrast
    draw_set_color(c_black);
    draw_text(x - text_w / 2 + 2, y - text_h / 2 + 2, text);

    // Main text
    draw_set_color(color);
    draw_text(x - text_w / 2, y - text_h / 2, text);
}

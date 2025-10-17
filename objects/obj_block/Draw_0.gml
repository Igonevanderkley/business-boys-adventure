if (!is_collapsing) {
    // Fade-in left to right
    draw_sprite_part(sprite_index, image_index, 0, 0, fade_progress, sprite_height, x, y);
} else {
    // Normal draw while collapsing (rotating, falling)
    draw_self();
}

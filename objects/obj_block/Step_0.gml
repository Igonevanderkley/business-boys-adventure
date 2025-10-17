// Fade-in effect (only if not collapsing)
if (!is_collapsing) {
    fade_progress += fade_speed;
    if (fade_progress > sprite_width) fade_progress = sprite_width;
} else {
    // Collapse physics
    fall_speed += 0.4; // gravity
    y += fall_speed;
    image_angle += rotation_speed;

    // If it falls below the screen, remove it
    if (y > room_height + 100) {
        instance_destroy();
    }
}

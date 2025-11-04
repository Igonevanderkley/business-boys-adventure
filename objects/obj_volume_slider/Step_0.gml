if (mouse_check_button(mb_left)) {
    if (mouse_x > x && mouse_x < x + knob_width && mouse_y > y - 10 && mouse_y < y + 10) {
        knob_x = clamp(mouse_x, x, x + knob_width);
        volume = (knob_x - x) / knob_width;
        audio_master_gain(0);
    }
}

	
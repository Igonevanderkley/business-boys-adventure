
if (sound_on) {
    sound_on = false;
    sprite_index = sSound_off;
    audio_master_gain(0);
} else {
    sound_on = true;
    sprite_index = sSound_on;
    audio_master_gain(1);
}


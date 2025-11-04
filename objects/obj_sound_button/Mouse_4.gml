
if (sound_on) {
    sound_on = false;
    sprite_index = sSound_off;
    audio_master_gain(0);
} else {
    sound_on = true;
    sprite_index = sSound_on;
    audio_master_gain(1);
}
// Controleer of we twee keer snel klikken
if (slider_visible == false) {
    // Maak slider zichtbaar
    slider_visible = true;
    slider_id = instance_create_depth(x, y + 40, -100, obj_volume_slider);
} else {
    // Als de slider al zichtbaar is, verwijder hem
    if (instance_exists(slider_id)) {
        instance_destroy(slider_id);
    }
    slider_visible = false;
}



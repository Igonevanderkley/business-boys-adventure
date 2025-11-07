if (slider_visible == true) {
    if (instance_exists(slider_id)) {
        instance_destroy(slider_id);
    }
    slider_visible = false;
}

image_blend = c_white; // terug naar normaal

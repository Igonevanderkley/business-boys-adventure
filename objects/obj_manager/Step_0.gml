if (keyboard_check_pressed(vk_space)) {
    var x_block = bridge_x + blocks_placed * block_width;
    instance_create_layer(x_block, bridge_y, layer_name, obj_block);
    blocks_placed += 1;
}

if (keyboard_check_pressed(ord("R"))) {
    with (obj_block) instance_destroy();
    blocks_placed = 0;
}

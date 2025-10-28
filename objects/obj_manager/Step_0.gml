// Place a block manually with Space (optional)
if (keyboard_check_pressed(vk_space) && blocks_placed < array_length(block_sprites)) {
    var x_block = bridge_x + blocks_placed * block_width;
    var new_block = instance_create_layer(x_block, bridge_y, layer_name, obj_block);
    new_block.sprite_index = block_sprites[blocks_placed];
    blocks_placed += 1;
}

// Reset blocks with R
if (keyboard_check_pressed(ord("R"))) {
    with (obj_block) instance_destroy();
    blocks_placed = 0;
}

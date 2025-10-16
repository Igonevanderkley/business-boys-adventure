// Place a new block when pressing Space
if (keyboard_check_pressed(vk_space)) {
    if (blocks_placed < array_length(block_sprites)) {
        var x_block = bridge_x + blocks_placed * block_width;
        
        // Create the block and assign a sprite
        var new_block = instance_create_layer(x_block, bridge_y, layer_name, obj_block);
        new_block.sprite_index = block_sprites[blocks_placed];
        
        blocks_placed += 1;
    }
}

// Reset blocks when pressing R
if (keyboard_check_pressed(ord("R"))) {
    with (obj_block) instance_destroy();
    blocks_placed = 0;
}

// Reset when all blocks are gone after collapse
if (keyboard_check_pressed(ord("R"))) {
    with (obj_block) instance_destroy();
    blocks_placed = 0;
}

if (instance_number(obj_block) == 0) {
    blocks_placed = 0;
}

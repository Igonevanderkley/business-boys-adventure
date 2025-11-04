function answer_question(choice) {

    var q = questions[current_question];
    answered = true;

    // Coordinates for GUI message
    var msg_x = display_get_gui_width() / 2;
    var msg_y = display_get_gui_height() / 3;

    // ✅ Correct answer
    if (choice == q[2]) {

        // Reward money
        with (obj_controller) money += 10;

        // Spawn green "Correct!" message
        var msg = instance_create_depth(0, 0, -1000, obj_message);
        msg.text = "Heel goed!";
        msg.color = c_green;
        msg.visible = true;
        msg.timer = 60;
        msg.x = msg_x;
        msg.y = msg_y;

        // Add a block to the bridge
        with (obj_manager) {
            if (blocks_placed < array_length(block_sprites)) {
                var block_x = bridge_x + blocks_placed * block_width;
                var new_block = instance_create_layer(block_x, bridge_y, layer_name, obj_block);
                new_block.sprite_index = block_sprites[blocks_placed];
                blocks_placed += 1;
            }
        }

    // ❌ Wrong answer
    } else {

        // Spawn red "Wrong!" message
        var msg = instance_create_depth(0, 0, -1000, obj_message);
        msg.text = "Dat klopt niet.. begin opnieuw!";
        msg.color = c_red;
        msg.visible = true;
        msg.timer = 60;
        msg.x = msg_x;
        msg.y = msg_y;

        // Collapse blocks
        with (obj_block) {
            is_collapsing = true;
            rotation_speed = random_range(-10, 10);
        }

        // Reset quiz
        current_question = 0;
        blocks_placed = 0;
    }

    // Move to next question after delay
    alarm[0] = 30;
}
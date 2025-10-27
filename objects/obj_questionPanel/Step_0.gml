// Step Event
if (!answered) {
    if (keyboard_check_pressed(ord("1"))) answer_question(0);
    if (keyboard_check_pressed(ord("2"))) answer_question(1);
    if (keyboard_check_pressed(ord("3"))) answer_question(2);
    if (keyboard_check_pressed(ord("4"))) answer_question(3);
}

function answer_question(choice) {
    var q = questions[current_question];
    answered = true; // stop further input

    // Add money reward
    with (obj_controller) {
        money += 10;
    }

    if (choice == q[2]) {
        result_message = "Heel goed!";
        
        // Add a new bridge block (only if within range)
        with (obj_manager) {
            if (blocks_placed < array_length(block_sprites)) {
                var block_x = bridge_x + blocks_placed * block_width;
                var new_block = instance_create_depth(block_x, bridge_y, 0, obj_block);
                new_block.sprite_index = block_sprites[blocks_placed];
                blocks_placed += 1;
            } else {
                show_debug_message("De brug is compleet!");
            }
        }

    } else {
        // Wrong answer
        result_message = "Oei, dat klopt niet.. Begin opnieuw!";

        // Collapse all blocks
        with (obj_block) {
            is_collapsing = true;
            rotation_speed = random_range(-10, 10);
        }

        // Reset quiz
        current_question = 0;
        with (obj_manager) {
            blocks_placed = 0; // reset bridge if needed
        }
    }

    // Move to next question after delay (1.5 sec @ 60 FPS)
    alarm[0] = 10; // 90 frames = 1.5s if 60fps
}

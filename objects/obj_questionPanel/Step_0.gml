
if (!answered && current_question < array_length(questions)) {
    if (keyboard_check_pressed(ord("1"))) answer_question(0);
    if (keyboard_check_pressed(ord("2"))) answer_question(1);
    if (keyboard_check_pressed(ord("3"))) answer_question(2);
	if (keyboard_check_pressed(ord("4"))) answer_question(3);
}

function answer_question(choice) {
    var q = questions[current_question];
    answered = true; // stop further input

    if (choice == q[2]) {
        result_message = "Correct!";
        
        // Tell obj_manager to add a block
        with (obj_manager) {
            var block_x = bridge_x + blocks_placed * block_width;
			var new_block = instance_create_depth(block_x, bridge_y, 0, obj_block);
			new_block.sprite_index = block_sprites[blocks_placed];
 
            blocks_placed += 1;
        }
    } else {
   result_message = "Wrong! Bridge collapsed!";

// Trigger collapse for all blocks
with (obj_block) {
    is_collapsing = true;
    rotation_speed = random_range(-10, 10); // spin randomly
}

// Reset question index
current_question = 0;

   }

    // Start a timer to move to next question after 1.5 seconds
    alarm[0] = 30; // 1.5 second delay at 60fps

}

	
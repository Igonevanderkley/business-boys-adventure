// Reset input and messages
answered = false;
result_message = "";

// Move to the next question
current_question++;

// Check if we've reached the end
if (current_question >= array_length(questions)) {
    show_message("All questions answered!");
    room_goto(tycoon); 
}

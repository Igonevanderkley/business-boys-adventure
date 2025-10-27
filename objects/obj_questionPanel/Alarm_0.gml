
// Move to next question
if (current_question < array_length(questions) - 1) {
    current_question++;
    answered = false; // allow next answer
} else {
    // Quiz complete
    result_message = "Nice! Nu kan Business Boy naar zijn nieuwe bedrijf!";
	questions = visible = false;
    
    // Make the "Next Room" button visible
    with (obj_nextroom) {
        visible = true;
    }

    // Optional: stop accepting input
    answered = true;
}

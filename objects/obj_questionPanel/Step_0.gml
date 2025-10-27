if (!answered && current_question < array_length(questions)) {
    if (keyboard_check_pressed(ord("1"))) answer_question(0);
    if (keyboard_check_pressed(ord("2"))) answer_question(1);
    if (keyboard_check_pressed(ord("3"))) answer_question(2);
    if (keyboard_check_pressed(ord("4"))) answer_question(3);
}

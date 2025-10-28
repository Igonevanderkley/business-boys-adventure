if (current_question < array_length(questions) - 1) {
    current_question += 1;
    answered = false;
} else {
    // Quiz complete
    answered = true;

    with (obj_message) {
        text = "Het is je gelukt! Nu kan je door naar de tycoon!";
        color = c_blue;
        x = obj_questionPanel.panel_x + obj_questionPanel.panel_width / 2;
        y = obj_questionPanel.panel_y + obj_questionPanel.panel_height / 3;
        timer = 500;
        alpha = 0;
        state = "fade_in";
        visible = true;
    }

    // Show next room button
    with (obj_nextroom) visible = true;
}

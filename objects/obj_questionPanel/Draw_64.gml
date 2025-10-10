// achtergrond paneel
draw_set_color(c_blue);
draw_rectangle(50, 350, 590, 470, false); // grijze box aan de onderkant

// huidige vraag
// hier haal je uit de questions array het item met de key van current_question dat is aan het begin altijd 0
var q = questions[current_question];

draw_set_color(c_white);
draw_text(70, 370, q[0]);

// antwoord opties
// hier loopen we door het array item van current_question we loopen door alle antwoorden
for (var i = 0; i < array_length(q[1]); i++) {
	// Draw "1: answer", "2: answer", etc.
	draw_text(90, 400 + i * 20, string(i + 1) + ": " + q[1][i]);
}

// input 
draw_text(70, 460, "Press 1, 2, or 3 to answer");

// het resultaat laten zien als het bestaat
if (result_message != "") {
    draw_text(400, 370, result_message);
}


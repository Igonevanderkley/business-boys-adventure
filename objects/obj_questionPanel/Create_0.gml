// Quiz data
questions = [
    ["Waar staat BIT voor?", ["Business Intelligence Tactician","Building Information Technology","Business Information Technology","Business Information Tactician"], 2],
    ["Welke van deze beroepsrollen valt niet onder BIT", ["Business consultant","Informatiearchitect","Functioneel beheerder","Software engineer"], 3],
    ["Wat is het hoofddoel van BIT?", ["Websites bouwen","Bedrijfsdoelen halen","Games maken","Werknemers vervangen"], 1],
    ["Waar is BI voor?", ["Data analyse","HR taken","Sales","Printen"], 0],
    ["Waar staat ERP voor?", ["Enterprise Reevaluation Planning","Enterprise Resource Planning","Enterprise Resource Product","Enterprise Reevaluation Product"], 1],
    ["Wat kan je met ERP software doen?", ["Emails versturen","Graphics designen","Bedrijfsprocessen managen","Hyperlinks vastleggen"], 2],
    ["Wat is geen Business IT oplossing?", ["Cloud omgeving","Software implementaties","Bugfixes","DaaS (Devices as a Service)"], 2]
];

// Track progress
current_question = 0;
answered = false;

// Panel dimensions
panel_width = 520;
panel_height = 160;
panel_x = (display_get_gui_width() / 2) - (panel_width / 2);
panel_y = display_get_gui_height() - panel_height - 20;

// Bridge variables
blocks_placed = 0;

// Hide the next room button initially
with (obj_nextroom) visible = false;

 
 
// vragen data array
// de volgorde is "vraag", "antwoorden/opties", "juiste antwoord en dat is het de array key dus 0,1,2"

questions = [
	["Waar staat BIT voor?",["Business Intelligence Tactician", "Building Information Technology", "Business Information Technology", "Business Information Tactician"], 2],
	["Welke van deze beroepsrollen valt niet onder BIT",["Business consultant", "Informatiearchitect", "Functioneel beheerder", "Software engineer"], 3],
	["Wat is het hoofddoel van BIT?",["Websites bouwen", "Bedrijfsdoelen halen", "Games maken", "Werknemers vervangen"], 1],
	["Waar is BI voor?",["Data analyse", "HR taken", "Sales", "Printen"], 0],
	["Waar staat ERP voor?",["Enterprise Reevaluation Planning", "Enterprise Resource Planning", "Enterprise Resource Product", "Enterprise Reevaluation Product"], 1],
	["Wat kan je met ERP software doen?",["Emails versturen", "Graphics designen", "Bedrijfsprocessen managen", "Hyperlinks vastleggen"], 2],
	["Wat is geen Business IT oplossing?",["Cloud omgeving", "Software implementaties", "Bugfixes", "DaaS (Devices as a Service)"], 2],
];

current_question = 0;
answered = false;
result_message = "";
wrong_reset = false;
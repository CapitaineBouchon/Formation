var nom = window.prompt("Entrez votre nom");
var prenom = window.prompt("Entrez votre prénom");
if (window.confirm("Etes-vous un homme ?") == true) {
 	var sexe = "Monsieur ";
}
else{
	var sexe = "Madame ";
}

window.alert("Bonjour " + sexe + nom + " "+ prenom +"\nBienvenue sur notre site web !");
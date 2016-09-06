var compteur = 0;
var nom = "";
var entry = "";
do
{
	entry = prompt("Saisissez le prénom N°" + (compteur + 1));
	nom += entry + "\n";
	compteur++;
}while(entry != "")

console.log("Voici la liste des " + (compteur-1) + " noms saisis :\n" + nom);
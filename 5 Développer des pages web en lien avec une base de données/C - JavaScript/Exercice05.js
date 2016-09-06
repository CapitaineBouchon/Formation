var a;
var b;
var nb;
var lien;

function produit(x, y)
{
	prod = x*y;
	return prod;
}
function afficheImage(image)
{
	document.write("<img src=\""+image+"\" />");
}
function cubic(nombre)
{
	cube = nombre*nombre*nombre;
	return cube;
}

a = prompt("Entrez un nombre");
b = prompt("Entrez un nombre à multiplier");
nb = prompt("Entrez un nombre pour en calculer le cube");
lien = prompt("Entrez l'URL d'une image");

document.write("Le cube de " + nb + " est égal à " + cubic(nb) + ".<br />");
document.write("Le produit de " + a + " x " + b + " est égal à " + produit(a, b) + ".<br />");
afficheImage(lien);
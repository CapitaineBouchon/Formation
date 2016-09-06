var retry = true;
while(retry == true)
{
	var nbMag = Math.floor((Math.random() * 100) + 1);
	var nbAsk = prompt("Devinez le nombre magique compris entre 1 et 100");
	while(nbAsk != nbMag)
	{
		if (nbMag < nbAsk) 
		{
			nbAsk = prompt("Le nombre magique est plus petit !");
		}
		else
		{
			nbAsk = prompt("Le nombre magique est plus grand !");
		}
	}
	if (confirm("Félicitation, le nombre magique était " + nbMag+".\nVoulez-vous rejouer ?") == true) 
	{
		retry = true;
	}
	else
	{
		retry = false;
	}
}


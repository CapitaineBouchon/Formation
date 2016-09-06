use Papyrus
GO

--Cr�ation d�une proc�dure stock�e sans param�tre 
	--Afficher le code des fournisseurs pour lesquels une commande a �t� pass�e

CREATE PROC Lst_fournis AS
	SELECT numFou FROM stg04.fournis
		WHERE numFou IN (SELECT numFou FROM stg04.entcom)

EXEC Lst_fournis

EXEC sp_help Lst_fournis
EXEC sp_helptext Lst_fournis

--Cr�ation d�une proc�dure stock�e avec un param�tre en entr�e 
	--
DROP PROC Lst_Commandes
CREATE PROC Lst_Commandes 
	@observation VARCHAR (50)
	AS
	SELECT ligcom.numCom, fournis.nomFou, produit.libArt, entcom.obsCom,CAST(ligcom.priUni AS MONEY) * ligcom.qteCde AS "Sous-total" FROM stg04.entcom
	JOIN stg04.fournis ON fournis.numFou = entcom.numFou
	JOIN stg04.ligcom ON ligcom.numCom = entcom.numCom
	JOIN stg04.produit ON produit.codArt = ligcom.codArt
	WHERE entcom.obsCom LIKE ('%' + @observation + '%')

EXEC Lst_Commandes 'urg'


--Cr�ation d�une proc�dure stock�e avec des param�tres en entr�e

CREATE PROC CA_Fournisseur
	@code_fournisseur INT,
	@annee INT
	AS
	SELECT fournis.nomFou, fournis.numFou, SUM(ligcom.qteCde * ligcom.priUni  * 1.2) AS "Chiffre d'affaire" FROM stg04.fournis
	JOIN stg04.entcom ON entcom.numFou = fournis.numFou
	JOIN stg04.ligcom ON ligcom.numCom = entcom.numCom
	WHERE YEAR(entcom.datCom) = @annee AND entcom.numFou = @code_fournisseur
	GROUP BY fournis.nomFou, fournis.numFou 

EXEC CA_Fournisseur 120, 2007

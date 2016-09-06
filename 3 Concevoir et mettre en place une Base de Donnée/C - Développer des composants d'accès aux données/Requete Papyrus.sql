USE Papyrus
GO

--1
SELECT stg04.entcom.numCom FROM stg04.entcom
JOIN stg04.fournis ON stg04.fournis.numFou = stg04.entcom.numFou
WHERE stg04.fournis.numFou = 09120

--2
SELECT DISTINCT stg04.entcom.numFou FROM stg04.entcom

--3
SELECT COUNT(stg04.entcom.numCom) AS 'Commandes', COUNT(DISTINCT stg04.entcom.numFou) AS 'Fournisseur' FROM stg04.entcom

--4
SELECT stg04.produit.codArt, stg04.produit.libArt, stg04.produit.stkPhy, stg04.produit.stkLe, stg04.produit.qteAnn FROM stg04.produit
WHERE stg04.produit.stkPhy <= stg04.produit.stkLe AND stg04.produit.stkLe < 1000

--5
SELECT SUBSTRING(stg04.fournis.posFou, 1, 2) AS 'departement', stg04.fournis.nomFou FROM stg04.fournis
WHERE SUBSTRING(stg04.fournis.posFou, 1, 2) IN ('75', '78' , '92' , '77')

--6
SELECT stg04.entcom.numCom, stg04.entcom.datCom, MONTH(stg04.entcom.datCom) FROM stg04.entcom WHERE MONTH(stg04.entcom.datCom) IN ('03', '04')

--7
SELECT stg04.entcom.numCom, stg04.entcom.datCom FROM stg04.entcom 
WHERE YEAR(stg04.entcom.datCom) = YEAR(getdate())  AND MONTH(stg04.entcom.datCom) = MONTH(getdate()) AND DAY(stg04.entcom.datCom) = DAY(getdate()) AND stg04.entcom.obsCom IS NOT NULL

--8
SELECT stg04.ligcom.numCom, SUM(CAST(stg04.ligcom.priUni AS MONEY)* stg04.ligcom.qteCde) FROM stg04.ligcom 
GROUP BY stg04.ligcom.numCom

--9
SELECT stg04.ligcom.numCom, SUM(CAST(stg04.ligcom.priUni AS MONEY)* stg04.ligcom.qteCde) FROM stg04.ligcom 
WHERE stg04.ligcom.qteCde >= 1000
GROUP BY stg04.ligcom.numCom
HAVING SUM(CAST(stg04.ligcom.priUni AS MONEY)* stg04.ligcom.qteCde) > 10000

--10
SELECT stg04.fournis.nomFou, stg04.entcom.numCom, stg04.entcom.datCom FROM stg04.entcom, stg04.fournis
WHERE stg04.entcom.numFou = stg04.fournis.numFou

--11
SELECT stg04.ligcom.numCom, stg04.fournis.nomFou, stg04.produit.libArt, CAST(stg04.ligcom.priUni AS MONEY) * stg04.ligcom.qteCde AS "Sous-total" FROM stg04.entcom
JOIN stg04.fournis ON stg04.fournis.numFou = stg04.entcom.numFou
JOIN stg04.ligcom ON stg04.ligcom.numCom = stg04.entcom.numCom
JOIN stg04.produit ON stg04.produit.codArt = stg04.ligcom.codArt
WHERE stg04.entcom.obsCom LIKE ('%urgent%')

--12
SELECT stg04.fournis.nomFou, stg04.ligcom.codArt, stg04.ligcom.qteCde, stg04.ligcom.qteLiv FROM stg04.fournis
JOIN stg04.entcom ON stg04.fournis.numFou = stg04.entcom.numFou
JOIN stg04.ligcom ON stg04.ligcom.numCom = stg04.entcom.numCom
WHERE stg04.ligcom.qteLiv < stg04.ligcom.qteCde

SELECT DISTINCT stg04.fournis.nomFou FROM stg04.fournis
JOIN stg04.entcom ON stg04.fournis.numFou = stg04.entcom.numFou
JOIN stg04.ligcom ON stg04.ligcom.numCom = stg04.entcom.numCom
WHERE stg04.ligcom.qteLiv < stg04.ligcom.qteCde

--13
SELECT stg04.entcom.numCom, stg04.entcom.datCom FROM stg04.entcom
WHERE stg04.entcom.numFou = (
	SELECT stg04.entcom.numFou FROM stg04.entcom WHERE stg04.entcom.numCom = 70210)

--14
SELECT stg04.produit.libArt, stg04.vente.prix1 FROM stg04.produit
JOIN stg04.vente ON stg04.vente.codArt = stg04.produit.codArt
WHERE stg04.produit.stkPhy > stg04.produit.stkLe AND stg04.vente.prix1 < ANY (
	SELECT stg04.vente.prix1 FROM stg04.vente 
	JOIN stg04.produit ON stg04.vente.codArt = stg04.produit.codArt
	WHERE stg04.produit.libArt LIKE ('r%'))

--15
SELECT stg04.fournis.nomFou, stg04.produit.libArt FROM stg04.fournis
JOIN stg04.vente ON stg04.fournis.numFou = stg04.vente.numFou
JOIN stg04.produit ON stg04.produit.codArt = stg04.vente.codArt
WHERE stg04.produit.stkLe * 2.5 >= stg04.produit.stkPhy
ORDER BY  stg04.produit.libArt ASC, stg04.fournis.nomFou ASC

--16
SELECT stg04.fournis.nomFou, stg04.produit.libArt FROM stg04.fournis
JOIN stg04.vente ON stg04.fournis.numFou = stg04.vente.numFou
JOIN stg04.produit ON stg04.produit.codArt = stg04.vente.codArt
WHERE stg04.produit.stkLe * 2.5 >= stg04.produit.stkPhy AND stg04.vente.delliv <= 30
ORDER BY stg04.fournis.nomFou ASC, stg04.produit.libArt ASC

--17
SELECT stg04.fournis.nomFou, SUM(stg04.produit.stkPhy) AS "Stock" FROM stg04.fournis
JOIN stg04.vente ON stg04.fournis.numFou = stg04.vente.numFou
JOIN stg04.produit ON stg04.produit.codArt = stg04.vente.codArt
WHERE stg04.produit.stkLe * 2.5 >= stg04.produit.stkPhy AND stg04.vente.delliv <= 30
GROUP BY stg04.fournis.nomFou
ORDER BY 'Stock' DESC

--18
SELECT stg04.produit.libArt, SUM(stg04.ligcom.qteCde) AS "Somme" FROM stg04.produit
JOIN stg04.ligcom ON stg04.ligcom.codArt = stg04.produit.codArt
JOIN stg04.entcom ON stg04.entcom.numCom = stg04.ligcom.numCom
--WHERE YEAR(GETDATE()) = YEAR(stg04.entcom.datCom)  
GROUP BY stg04.produit.libArt, stg04.produit.qteAnn
HAVING SUM(stg04.ligcom.qteCde) > stg04.produit.qteAnn * 0.9

--19
SELECT fournis.nomFou, fournis.numFou, SUM(ligcom.qteCde * ligcom.priUni  * 1.2) AS "Chiffre d'affaire" FROM stg04.fournis
JOIN stg04.entcom ON entcom.numFou = fournis.numFou
JOIN stg04.ligcom ON ligcom.numCom = entcom.numCom
--WHERE YEAR(entcom.datCom) = 1993
GROUP BY fournis.nomFou, fournis.numFou

SELECT * FROM stg04.entcom, stg04.ligcom
WHERE entcom.numCom=ligcom.numCom
ORDER BY numFou



-- IV LES BESOINS DE MISE A JOUR
--1
UPDATE stg04.vente
	SET vente.prix1 = vente.prix1 * 1.04, vente.prix2 = vente.prix2 * 1.02
	WHERE vente.numFou = 9180

--2
UPDATE stg04.vente 
	SET prix2 = (SELECT MIN(v.prix1) FROM stg04.vente as v where vente.codArt=v.codart )
	WHERE prix2 IS NULL




SELECT codArt, prix2 FROM stg04.vente WHERE prix2 IS NULL
SELECT MIN(prix1) FROM stg04.vente where codart='d035'
SELECT MIN(prix1) FROM stg04.vente where codart='r132'

SELECT prix1, prix2, codArt FROM stg04.vente

--3
UPDATE stg04.entcom
	SET obsCom = '*****' 
	WHERE numFou IN (SELECT numFou FROM stg04.fournis WHERE satisf < 5 OR satisf IS NULL)

--4
DELETE FROM stg04.ligcom WHERE ligcom.codArt = 'I110'
DELETE FROM stg04.vente WHERE vente.codArt = 'I110'
DELETE FROM stg04.produit WHERE produit.codArt = 'I110'

--5
DELETE FROM stg04.entcom
	WHERE numCom NOT IN (select numcom from stg04.ligcom)


SELECT entcom.numCom FROM stg04.entcom
JOIN stg04.ligcom ON ligcom.numCom = entcom.numCom
WHERE entcom.numCom IN (ligcom.numCom)
GROUP BY entcom.numCom

SELECT entcom.numCom FROM stg04.entcom
ORDER BY entcom.numCom

SELECT DISTINCT ligcom.numCom FROM stg04.ligcom
--GROUP BY ligcom.numCom
ORDER BY ligcom.numCom ASC


select * from stg04.entcom
	where numcom not in (select numcom from stg04.ligcom)


select * 
from stg04.entcom as e
LEFT join stg04.ligcom as l on e.numCom=l.numCom

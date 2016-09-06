USE Papyrus
GO

CREATE VIEW GlobalCde AS
	SELECT codArt, SUM(qteCde) AS "QteTot", SUM(qteCde * priUni) AS "PrixTot" FROM stg04.ligcom
	GROUP BY codArt

SELECT * FROM GlobalCde


CREATE VIEW VentesI100 AS
	SELECT * FROM stg04.vente
	WHERE codArt = 'I100'

SELECT * FROM VentesI100

CREATE VIEW VentesI100Grobrigan AS
	SELECT * FROM VentesI100
	WHERE numFou = 00120

SELECT * FROM VentesI100Grobrigan


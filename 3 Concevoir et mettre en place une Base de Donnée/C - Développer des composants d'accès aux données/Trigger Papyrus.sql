USE Papyrus
GO


-- 1) Création d’un déclencheur AFTER DELETE
CREATE TRIGGER AFTER_DELETE ON stg04.vente FOR DELETE AS 
IF (SELECT COUNT(*) FROM deleted)>1
ROLLBACK

DROP TRIGGER AFTER_DELETE


--2) Création d’un déclencheur AFTER UPDATE 

CREATE TABLE stg04.articles_a_commander (
	codArt CHAR(4) PRIMARY KEY,
	qte INT,
	date SMALLDATETIME,
	FOREIGN KEY (codArt) REFERENCES stg04.produit(codArt)
)
GO
CREATE TRIGGER AFTER_UPDATED ON stg04.produit FOR UPDATE AS
	DECLARE @article CHAR(4)
	DECLARE @quantite INT
	SET @article = (SELECT codArt FROM inserted)
	SET @quantite = (SELECT (articles_a_commander.qte + stkPhy - stkLe) FROM inserted JOIN stg04.articles_a_commander ON articles_a_commander.codArt = inserted.codArt)
IF
	(SELECT SUM(articles_a_commander.qte + inserted.stkPhy) FROM stg04.articles_a_commander
	JOIN inserted ON inserted.codArt = articles_a_commander.codArt
	GROUP BY inserted.codArt) BETWEEN 0 AND (SELECT stkLe FROM inserted)

		INSERT INTO stg04.articles_a_commander(codArt, qte, date)
			VALUES (@article, @quantite, getdate())
ELSE IF
	 (SELECT articles_a_commander.qte + stkPhy - stkLe FROM inserted JOIN stg04.articles_a_commander ON articles_a_commander.codArt = inserted.codArt) < 0 
	ROLLBACK

GO
DROP TRIGGER AFTER_UPDATE



-- 3) Création d’un déclencheur DDL
GO
CREATE TRIGGER protection_trigger
ON DATABASE
FOR ALTER_TRIGGER, CREATE_TRIGGER, DROP_TRIGGER
AS
	ROLLBACK
GO

DROP TRIGGER protection_trigger
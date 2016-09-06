USE Papyrus
GO




BEGIN TRAN
PRINT 'Valeur de Trancount: ' + CAST(@@TRANCOUNT AS varchar(5))
PRINT 'Avant MaJ:'
SELECT nomfou FROM stg04.fournis WHERE numfou=120
UPDATE stg04.fournis
SET nomfou= 'LEBRIGAND' WHERE numfou=120
PRINT 'Après MaJ:'
SELECT nomfou FROM stg04.fournis WHERE numfou=120
PRINT 'Valeur de Trancount: ' + CAST(@@TRANCOUNT AS varchar(5)) 

ROLLBACK TRAN -- Annule les commandes de la transactions

COMMIT TRAN -- Valide les commandes de la transaction
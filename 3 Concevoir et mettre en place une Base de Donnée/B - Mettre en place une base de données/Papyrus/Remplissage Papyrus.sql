USE Papyrus
GO

/*Modification de la base Papyrus pour accepter les valeurs*/





/* Ajout dans stg04.fournis */

INSERT INTO stg04.fournis
	VALUES (00120, 'GROBRIGAN', '20 rue du papier', '92200', 'papercity', 'Georges', 08)

INSERT INTO stg04.fournis
	VALUES (00540, 'ECLIPSE', '53, rue laisse flotter les rubans', '78250' ,'Bugbugville', 'Nestor', 07)

INSERT INTO stg04.fournis
	VALUES (08700, 'MEDICIS', '120 rue des plantes', '75014', 'Paris', 'Lison', NULL)

INSERT INTO stg04.fournis	
	VALUES (09120, 'DISCOBOL', '11 rue des sports', '85100', 'La roche sur Yon', 'Hercule', 08)

INSERT INTO stg04.fournis	
	VALUES (09150, 'DEPANPAP', '26, rue des locomotives', '59987', 'Coroncountry', 'Pollux', 05)

INSERT INTO stg04.fournis	
	VALUES (09180, 'HURRYTAPE', '68, boulevard des octets', '04044', 'Dumpville', 'Track', NULL)

/* Ajout dans stg04.entcomm */

INSERT INTO stg04.entcom (datCom, numFou)
	VALUES ('10/02/2007', 00120)

INSERT INTO stg04.entcom (obsCom, datCom, numFou)
	VALUES ('Commande Urgente', '01/03/2007', 00540)

INSERT INTO stg04.entcom (datCom, numFou)
	VALUES ('25/04/2007', 09180)

INSERT INTO stg04.entcom (obsCom, datCom, numFou)
	VALUES ('Commande urgente', '30/04/2007', 09150)

INSERT INTO stg04.entcom (obsCom, datCom, numFou)
	VALUES ('Commande candencée', '05/05/2007', 00120)

INSERT INTO stg04.entcom (datCom, numFou)
	VALUES ('06/06/2007', 09120)

INSERT INTO stg04.entcom (obsCom, datCom, numFou)
	VALUES ('Commande cadencée', '02/10/2007', 08700)

INSERT INTO stg04.entcom (datCom, numFou)
	VALUES ('20/10/2007', 00540)

INSERT INTO stg04.entcom (datCom, numFou)
	VALUES ('09/10/2007', 00120)

INSERT INTO stg04.entcom (datCom, numFou)
	VALUES ('12/10/2007', 09180)

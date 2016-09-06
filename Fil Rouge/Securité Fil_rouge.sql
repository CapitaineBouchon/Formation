CREATE LOGIN Commercial
WITH PASSWORD = '1234',
DEFAULT_DATABASE = [Fil_rouge],
CHECK_EXPIRATION = OFF,
CHECK_POLICY = OFF


CREATE LOGIN Gestion
WITH PASSWORD = '1234',
DEFAULT_DATABASE = [Fil_rouge],
CHECK_EXPIRATION = OFF,
CHECK_POLICY = OFF

CREATE LOGIN Client
WITH PASSWORD = '1234',
DEFAULT_DATABASE = [Fil_rouge],
CHECK_EXPIRATION = OFF,
CHECK_POLICY = OFF

CREATE LOGIN Administrateur
WITH PASSWORD = '1234',
DEFAULT_DATABASE = [Fil_rouge],
CHECK_EXPIRATION = OFF,
CHECK_POLICY = OFF

USE Fil_rouge
GO

CREATE USER Commercial1 FOR LOGIN Commercial
CREATE USER Gestion1 FOR LOGIN Gestion
CREATE USER Client1 FOR LOGIN Client
CREATE USER sys_admin FOR LOGIN Administrateur

----------------------------------------------
-- Groupe service commercial
----------------------------------------------

CREATE ROLE Commercial_gestion

GRANT ALL ON Commande TO Commercial_gestion
DENY DELETE ON Commande TO Commercial_gestion
GRANT ALL ON compose TO Commercial_gestion
DENY DELETE ON compose TO Commercial_gestion
GRANT ALL ON BonLivraison TO Commercial_gestion
DENY DELETE ON BonLivraison TO Commercial_gestion
GRANT ALL ON Client TO Commercial_gestion
DENY DELETE ON Client TO Commercial_gestion
GRANT ALL ON AdresseDeFacturation TO Commercial_gestion
DENY DELETE ON AdresseDeFacturation TO Commercial_gestion
GRANT ALL ON AdresseDeLivraison TO Commercial_gestion
DENY DELETE ON AdresseDeLivraison TO Commercial_gestion
GRANT SELECT ON Produit TO Commercial_gestion

----------------------------------------------
-- Groupe service de gestion des produits 
----------------------------------------------

CREATE ROLE Produit_gestion

GRANT ALL ON Produit TO Produit_gestion
GRANT SELECT ON est_livre TO Produit_gestion
GRANT INSERT ON est_livre TO Produit_gestion
GRANT ALL ON Fournisseur TO Produit_gestion
DENY DELETE ON Fournisseur TO Produit_gestion
GRANT ALL ON Rubrique TO Produit_gestion



----------------------------------------------
-- Groupe Clients
----------------------------------------------

CREATE ROLE Client_role

GRANT SELECT ON Produit TO Client_role
GRANT SELECT ON Commande TO Client_role
GRANT INSERT ON Commande TO Client_role
GRANT INSERT ON compose TO Client_role
GRANT SELECT ON compose TO Client_role
GRANT ALL ON AdresseDeFacturation TO Client_role
DENY DELETE ON AdresseDeFacturation TO Client_role
GRANT ALL ON AdresseDeLivraison TO Client_role
DENY DELETE ON AdresseDeLivraison TO Client_role



----------------------------------------------
--Administrateur
----------------------------------------------


ALTER ROLE db_owner
	ADD MEMBER sys_admin

----------------------------------------------

ALTER ROLE Commercial_Gestion
	ADD MEMBER Commercial1

ALTER ROLE Produit_gestion
	ADD MEMBER Gestion1

ALTER ROLE Client_role
	ADD MEMBER Client1
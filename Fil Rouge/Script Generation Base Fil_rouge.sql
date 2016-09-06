/*------------------------------------------------------------
*        Script VILLAGE GREEN
------------------------------------------------------------*/
CREATE DATABASE Fil_rouge
GO

USE Fil_rouge

/*------------------------------------------------------------
-- Table: Produit
------------------------------------------------------------*/
CREATE TABLE Produit(
	code_produit INT PRIMARY KEY ,
	libelle_court_produit VARCHAR (50)  ,
	libelle_long_produit  VARCHAR (255)  ,
	prix_vente_produit    MONEY   ,
	photo_produit         VARCHAR (255)  ,
	quantite_stock        INT  NOT NULL ,
	tva_produit           FLOAT
	)
CREATE INDEX index_produit ON Produit(code_produit)

/*------------------------------------------------------------
-- Table: Fournisseur
------------------------------------------------------------*/
CREATE TABLE Fournisseur(
	code_fournisseur        INT IDENTITY (1,1) PRIMARY KEY ,
	nom_fournisseur         VARCHAR (50)  ,
	adresse_fournisseur     VARCHAR (50)  ,
	code_postal_fournisseur VARCHAR (10)  ,
	ville_fournisseur       VARCHAR (50)  ,
	telephone_fournisseur	VARCHAR (20)
	
)
CREATE INDEX index_fournisseur ON Fournisseur(code_fournisseur)

/*------------------------------------------------------------
-- Table: Client
------------------------------------------------------------*/
CREATE TABLE Client(
	code_client        INT IDENTITY (1,1) PRIMARY KEY ,
	nom_client         VARCHAR (50)  ,
	prenom_client      VARCHAR (50)  ,
	type_client        bit   ,
	domaine_client     VARCHAR (50)  ,
	siret_client	   VARCHAR (50)  ,
	adresse_client     VARCHAR (50)  ,
	complement_client  VARCHAR (50)  ,
	code_postal_client VARCHAR (10)  ,
	ville_client       VARCHAR (50)  ,
	telephone_client   VARCHAR (20)  ,
	portable_client    VARCHAR (20)  ,
	mail_client        VARCHAR (50)  ,
	coefficient_client FLOAT
)
CREATE INDEX index_client ON Client(code_client)

/*------------------------------------------------------------
-- Table: Rubrique
------------------------------------------------------------*/
CREATE TABLE Rubrique(
	code_rubrique INT IDENTITY (1,1) PRIMARY KEY ,
	nom_rubrique  VARCHAR (50)  ,
)
CREATE INDEX index_rubrique ON Rubrique(code_rubrique)

/*------------------------------------------------------------
-- Table: AdresseDeLivraison
------------------------------------------------------------*/
CREATE TABLE AdresseDeLivraison(
	code_adresse_livraison INT IDENTITY (1,1) PRIMARY KEY ,
	code_client_livraison  INT  ,
	adresse_livraison      VARCHAR (50)  ,
	complement_livraison   VARCHAR (50)  ,
	code_postal_livraison  VARCHAR (10)  ,
	ville_livraison        VARCHAR (50)  
)
CREATE INDEX index_livraison ON AdresseDeLivraison(code_adresse_livraison)

/*------------------------------------------------------------
-- Table: Commercial
------------------------------------------------------------*/
CREATE TABLE Commercial(
	code_commercial      INT IDENTITY (1,1) PRIMARY KEY ,
	nom_commercial       VARCHAR (50)  ,
	prenom_commercial    VARCHAR (50)  ,
	mail_commercial      VARCHAR (50)  ,
	telephone_commercial VARCHAR (20)
)
CREATE INDEX index_commercial ON Commercial(code_commercial)

/*------------------------------------------------------------
-- Table: Commande
------------------------------------------------------------*/
CREATE TABLE Commande(
	numero_commande       INT IDENTITY (1,1) PRIMARY KEY ,
	paiement              bit  NOT NULL ,
	coefficient_reduction INT  NULL ,
	date_commande         DATETIME NOT NULL ,
	numero_facture        INT UNIQUE NOT NULL ,
	date_facture          DATETIME  ,
	date_paiement		  DATETIME  ,
	code_client           INT   , --Clé étrangère
	code_facturation      INT   , --Clé étrangère
	CHECK (date_commande <= date_facture AND date_commande <= date_paiement)
)
CREATE INDEX index_commande ON Commande(numero_commande)

/*------------------------------------------------------------
-- Table: AdresseDeFacturation
------------------------------------------------------------*/
CREATE TABLE AdresseDeFacturation(
	code_facturation        INT IDENTITY (1,1) PRIMARY KEY ,
	code_client_facturation INT  ,
	adresse_facturation     VARCHAR (50)  ,
	complement_facturation  VARCHAR (50)  ,
	code_postal_facturation VARCHAR (10)  ,
	ville_facturation       VARCHAR (50)  
)
CREATE INDEX index_facturation ON AdresseDeFacturation(code_facturation)

/*------------------------------------------------------------
-- Table: BonLivraison
------------------------------------------------------------*/
CREATE TABLE BonLivraison(
	code_livraison                    INT IDENTITY (1,1) PRIMARY KEY ,
	date_livraison                    DATETIME NOT NULL ,
	code_adresse_livraison			  INT   NOT NULL,--Clé étrangère
	numero_commande                   INT  NOT NULL ,--CLé étrangère
)
CREATE INDEX index_bonlivraison ON Bonlivraison(code_livraison)

/*------------------------------------------------------------
-- Table: fait parti
------------------------------------------------------------*/
CREATE TABLE fait_parti(
	code_produit INT  NOT NULL , --Clé étrangère
	code_rubrique  INT  NOT NULL , --Clé étrangère
	PRIMARY KEY (code_produit,code_rubrique)
)


/*------------------------------------------------------------
-- Table: est_livré
------------------------------------------------------------*/
CREATE TABLE est_livre(
	quantite_livraison    INT NOT NULL  ,
	date_livraison        DATETIME NOT NULL ,
	code_livraison        INT  NOT NULL ,
	code_produit INT  NOT NULL ,--Clé étrangère
	code_fournisseur      INT  NOT NULL ,--Clé étrangère
	PRIMARY KEY (code_produit,code_fournisseur)
)


/*------------------------------------------------------------
-- Table: contient
------------------------------------------------------------*/
CREATE TABLE contient(
	code_rubrique          INT  NOT NULL ,--Clé étrangère
	code_rubrique_Rubrique INT  NOT NULL ,--Clé étrangère
	PRIMARY KEY (code_rubrique,code_rubrique_Rubrique)
)


/*------------------------------------------------------------
-- Table: soccupe
------------------------------------------------------------*/
CREATE TABLE soccupe(
	code_client     INT  NOT NULL ,--Clé étrangère
	code_commercial INT  NOT NULL ,--Clé étrangère
	PRIMARY KEY (code_client,code_commercial)
)


/*------------------------------------------------------------
-- Table: compose
------------------------------------------------------------*/
CREATE TABLE compose(
	quantite_client       INT    ,
	prix_client           INT    ,
	tva_commande          FLOAT   ,
	code_produit INT  NOT NULL ,--Clé étrangère
	numero_commande       INT  NOT NULL ,--Clé étrangère
	PRIMARY KEY (numero_commande, code_produit)
)


/*------------------------------------------------------------
-- Table: regroupe
------------------------------------------------------------*/
CREATE TABLE regroupe(
	quantite_livre_client    INT  NOT NULL ,
	code_produit INT  NOT NULL ,--Clé étrangère
	code_livraison        INT  NOT NULL ,--Clé étrangère
	PRIMARY KEY (code_produit,code_livraison)
)


/*------------------------------------------------------------
-- Table: regroupe
------------------------------------------------------------*/
CREATE TABLE fournis(
	prix_achat MONEY,
	reference_fournisseur VARCHAR(25),
	code_fournisseur INT, --Clé étrangère
	code_produit INT --Clé étrangère
)

/*------------------------------------------------------------
-- Table: Mot de passe
------------------------------------------------------------*/


/*------------------------------------------------------------
-- Clés étrangères
------------------------------------------------------------*/
ALTER TABLE AdresseDeLivraison ADD
	FOREIGN KEY (code_client_livraison) REFERENCES Client(code_client)

ALTER TABLE AdresseDeFacturation ADD
	FOREIGN KEY (code_client_facturation) REFERENCES Client(code_client)

ALTER TABLE Commande ADD
	FOREIGN KEY (code_client) REFERENCES Client(code_client),
	FOREIGN KEY (code_facturation) REFERENCES AdresseDeFacturation(code_facturation)

ALTER TABLE BonLivraison ADD
	FOREIGN KEY (code_adresse_livraison) REFERENCES AdresseDeLivraison(code_adresse_livraison),
	FOREIGN KEY (numero_commande) REFERENCES Commande(numero_commande)

ALTER TABLE fait_parti ADD 
	FOREIGN KEY (code_produit) REFERENCES Produit(code_produit),
	FOREIGN KEY (code_rubrique) REFERENCES Rubrique(code_rubrique)

ALTER TABLE est_livre ADD 
	FOREIGN KEY (code_produit) REFERENCES Produit(code_produit),
	FOREIGN KEY (code_fournisseur) REFERENCES Fournisseur(code_fournisseur)

ALTER TABLE contient ADD 
	FOREIGN KEY (code_rubrique) REFERENCES Rubrique(code_rubrique),
	FOREIGN KEY (code_rubrique_Rubrique) REFERENCES Rubrique(code_rubrique)

ALTER TABLE soccupe ADD 
	FOREIGN KEY (code_client) REFERENCES Client(code_client),
	FOREIGN KEY (code_commercial) REFERENCES Commercial(code_commercial)

ALTER TABLE compose ADD 
	FOREIGN KEY (code_produit) REFERENCES Produit(code_produit),
	FOREIGN KEY (numero_commande) REFERENCES Commande(numero_commande)

ALTER TABLE regroupe ADD 
	FOREIGN KEY (code_produit) REFERENCES Produit(code_produit),
	FOREIGN KEY (code_livraison) REFERENCES BonLivraison(code_livraison)

ALTER TABLE fournis ADD
	FOREIGN KEY (code_produit) REFERENCES Produit(code_produit),
	FOREIGN KEY (code_fournisseur) REFERENCES Fournisseur(code_fournisseur)
	
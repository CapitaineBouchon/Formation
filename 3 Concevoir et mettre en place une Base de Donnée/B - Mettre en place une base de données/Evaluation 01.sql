CREATE DATABASE Evaluation1
GO

USE Evaluation1
GO

CREATE TABLE Client (
	cli_num INT PRIMARY KEY,
	cli_nom VARCHAR(50),
	cli_adresse VARCHAR(50),
	cli_tel VARCHAR(50)
)

CREATE TABLE Produit (
	pro_num INT PRIMARY KEY,
	pro_libelle  VARCHAR(50),
	pro_desciption VARCHAR(50)
)

CREATE TABLE Commande (
	com_num INT PRIMARY KEY,
	cli_num INT, --CLé étrangère
	com_date DATETIME,
	com_obs VARCHAR(50)
)

CREATE TABLE Est_compose (
	com_num INT, --Clé étrangère
	pro_num INT, --Clé étrangère
	est_qte INT,
	PRIMARY KEY (com_num, pro_num)
)

ALTER TABLE Commande ADD 
	FOREIGN KEY (cli_num) REFERENCES Client(cli_num)

ALTER TABLE Est_compose ADD 
	FOREIGN KEY (com_num) REFERENCES Commande(com_num),
	FOREIGN KEY (pro_num) REFERENCES Produit(pro_num)

	
CREATE INDEX index_Client ON Client(cli_nom)


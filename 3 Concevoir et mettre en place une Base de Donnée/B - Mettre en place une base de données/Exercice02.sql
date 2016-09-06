CREATE DATABASE Exercice02
GO

USE Exercice02
GO

CREATE TABLE Client (
	num_client INT PRIMARY KEY NOT NULL,
	nom_client varchar(50),
	prenom_client varchar(50),
	adresse_client varchar (50)
)

CREATE TABLE Chambre (
	num_chambre INT PRIMARY KEY NOT NULL,
	capacite_chambre INT NOT NULL,
	confort_chambre varchar(20),
	exposition_chambre varchar(50),
	type_chambre varchar(50)
)

CREATE TABLE Hotel (
	num_hotel INT PRIMARY KEY NOT NULL,
	capacite_hotel INT NOT NULL,
	categorie_hotel varchar(50),
	nom_hotel varchar(50),
	adresse_hotel varchar(50)
)

CREATE TABLE Station (
	num_station INT PRIMARY KEY NOT NULL,
	nom_station varchar(50)
)

CREATE TABLE Reservation (
	num_chambre INT NOT NULL,
	num_client INT NOT NULL,
	date_debut DATETIME NOT NULL,
	date_fin DATETIME NOT NULL,
	date_reservation DATETIME NOT NULL,
	arrhes_reservation MONEY,
	prix_total_reservation MONEY,
	PRIMARY KEY (num_chambre, num_client),
	CHECK (date_debut < date_fin),
	CHECK (date_reservation < date_debut)
)
GO

ALTER TABLE Chambre ADD num_hotel INT REFERENCES Hotel(num_hotel)


ALTER TABLE Hotel ADD num_station INT REFERENCES Station(num_station)


ALTER TABLE Reservation ADD
	FOREIGN KEY (num_chambre) REFERENCES Chambre(num_chambre),
	FOREIGN KEY (num_client) REFERENCES Client(num_client)
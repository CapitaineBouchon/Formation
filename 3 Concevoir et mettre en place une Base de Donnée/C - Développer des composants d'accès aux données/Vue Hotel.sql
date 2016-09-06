USE hotel
GO

--1. Afficher la liste des h�tels avec leur station

CREATE VIEW hotel_station AS
	SELECT hot_nom, sta_nom FROM station
	JOIN hotel ON hotel.hot_sta_id = station.sta_id

SELECT * FROM hotel_station


--2 Afficher la liste des chambres et leur h�tel

CREATE VIEW hotel_chambre AS
	SELECT hot_nom, cha_numero FROM hotel
	JOIN chambre ON  chambre.cha_hot_id= hotel.hot_id

SELECT * FROM hotel_chambre

--3 Afficher la liste des r�servations avec le nom des clients

CREATE VIEW reservation_client AS
	SELECT res_id as "Num�ro reservation", cli_nom AS "Nom client" FROM client
	JOIN reservation ON res_cli_id = cli_id

SELECT * FROM reservation_client


--4 Afficher la liste des chambres avec le nom de l�h�tel et le nom de la station
CREATE VIEW liste_hotel AS
	SELECT sta_nom, hot_nom, cha_numero FROM station
	JOIN hotel ON hotel.hot_sta_id = station.sta_id
	JOIN chambre ON  chambre.cha_hot_id= hotel.hot_id

SELECT * FROM liste_hotel
	

--5 Afficher les r�servations avec le nom du client et le nom de l�h�tel

CREATE VIEW reserv_hot_cli AS
	SELECT res_id, cli_nom, hot_nom FROM client
	JOIN reservation ON res_cli_id = cli_id
	JOIN chambre ON  chambre.cha_id = reservation.res_cha_id
	JOIN hotel ON hotel.hot_id = chambre.cha_hot_id

SELECT * FROM reserv_hot_cli
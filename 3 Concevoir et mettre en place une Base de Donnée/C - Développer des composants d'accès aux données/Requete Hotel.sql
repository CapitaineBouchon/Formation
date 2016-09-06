USE hotel
GO

--1
SELECT * FROM hotel

--2
SELECT cli_ville FROM client WHERE cli_nom='White'

--3
SELECT sta_nom FROM station WHERE sta_altitude < 1000

--4
SELECT * FROM chambre WHERE cha_capacite > 1

--5
SELECT * FROM client WHERE NOT cli_ville='Londre'

--6
SELECT station.sta_nom, hotel.hot_nom, hotel.hot_categorie, hotel.hot_ville FROM hotel
JOIN station ON station.sta_id = hotel.hot_sta_id

--7
SELECT chambre.cha_numero, hotel.hot_nom FROM chambre
JOIN hotel ON hot_id = cha_hot_id

--8
SELECT reservation.res_date, reservation.res_date_debut, reservation.res_date_fin, reservation.res_prix, reservation.res_arrhes, client.cli_nom FROM reservation
JOIN client ON client.cli_id = reservation.res_cli_id

--9
SELECT chambre.cha_numero, hotel.hot_nom, station.sta_nom FROM station
JOIN hotel ON station.sta_id=hotel.hot_sta_id
JOIN chambre ON hotel.hot_id=chambre.cha_hot_id

--10
SELECT reservation.res_id, client.cli_nom, hotel.hot_nom FROM client
JOIN reservation ON reservation.res_cli_id = client.cli_id
JOIN chambre ON chambre.cha_id = reservation.res_cha_id
JOIN hotel ON hotel.hot_id = chambre.cha_hot_id

--11
SELECT station.sta_nom, COUNT(hotel.hot_id) AS 'Nombre hotel' FROM station
JOIN hotel ON hotel.hot_sta_id = station.sta_id
GROUP BY station.sta_nom

--12
SELECT station.sta_nom, COUNT(chambre.cha_id) AS 'Nombre chambre' FROM station
JOIN hotel ON hotel.hot_sta_id = station.sta_id
JOIN chambre ON hotel.hot_id=chambre.cha_hot_id
GROUP BY station.sta_nom

--13
SELECT station.sta_nom, COUNT(chambre.cha_id) AS 'Nombre chambre' FROM station
JOIN hotel ON hotel.hot_sta_id = station.sta_id
JOIN chambre ON hotel.hot_id=chambre.cha_hot_id
WHERE chambre.cha_capacite>1
GROUP BY station.sta_nom

--14
SELECT hotel.hot_nom FROM client
JOIN reservation ON reservation.res_cli_id = client.cli_id
JOIN chambre ON chambre.cha_id = reservation.res_cha_id
JOIN hotel ON hotel.hot_id = chambre.cha_hot_id
WHERE client.cli_nom = 'Squire'
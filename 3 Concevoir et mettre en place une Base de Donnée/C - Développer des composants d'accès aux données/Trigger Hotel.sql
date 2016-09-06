USE hotel
GO


--Interdire la modification des réservations (on autorise l'ajout et la suppression)

CREATE TRIGGER modif_reservation ON reservation FOR UPDATE AS ROLLBACK

UPDATE reservation
	SET res_cha_id = 4 WHERE res_cli_id = 2

SELECT * FROM reservation

DROP TRIGGER modif_reservation


--Interdire l’ajout de station dont l’altitude est supérieure à 1000

CREATE TRIGGER insert_station ON station FOR INSERT AS IF (select station.sta_altitude FROM station) > 1000 ROLLBACK

INSERT INTO station(sta_nom, sta_altitude)
VALUES ('La Bourboule', 950)

DROP TRIGGER insert_station

--Interdire l'ajout de réservation pour les hôtels possédant déjà 10 réservations

CREATE TRIGGER insert_reservation ON reservation 
FOR INSERT 
AS IF (
	SELECT count(*) FROM reservation
	JOIN chambre ON cha_id = res_cha_id
	GROUP BY cha_hot_id
 ) > 10 ROLLBACK

DROP TRIGGER insert_reservation

--Interdire les réservations si le client possède déjà 3 réservations.

CREATE TRIGGER insert_reservation2 ON reservation 
FOR INSERT 
AS IF (
	SELECT count(*) FROM reservation
	GROUP BY res_cli_id
	) > 3
ROLLBACK

DROP TRIGGER insert_reservation2

--lors d'une insertion, on calcule le total des capacités des chambres pour l'hôtel, si ce total est
--supérieur à 50 , on interdit l'insertion de la chambre

CREATE TRIGGER insert_chambre ON chambre
FOR INSERT
AS IF (
	SELECT SUM(cha_capacite) FROM chambre
	GROUP BY cha_hot_id ) > 50
ROLLBACK

DROP TRIGGER insert_chambre




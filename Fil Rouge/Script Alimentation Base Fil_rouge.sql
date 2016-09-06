USE Fil_rouge
GO

--Client

INSERT INTO Client(nom_client, prenom_client, type_client, adresse_client, code_postal_client, ville_client, telephone_client, mail_client)
	VALUES ('Blizt', 'Elmut', 0, '4 rue de la Chocolatine', '56201', 'Budlin', '0358415267', 'elmutoukrugher@caramail.be')

INSERT INTO Client(nom_client, prenom_client, type_client, adresse_client, code_postal_client, ville_client, telephone_client, mail_client)
	VALUES ('Bloubi', 'Raoul', 0, '27 avenue du marais', '70685', 'Choucroutte', '0412568974', 'raoul.bloubi@wnadoo.fr')

INSERT INTO Client(nom_client, prenom_client, type_client, adresse_client, code_postal_client, ville_client, telephone_client, portable_client, mail_client)
	VALUES ('Elric', 'Alphonse', 0, '6 rue des âmes', '60235', 'Central City', '0203040506', '0708091011', 'cacouteunbras@gmail.com')

INSERT INTO Client(nom_client, type_client, domaine_client, adresse_client, code_postal_client, ville_client, telephone_client, mail_client)
	VALUES ('Trompette&Co', 1, 'Association', '39 rue du vent', '20685', 'Zephyr', '0103256484', 'trompetteco.contact@aol.fr')

INSERT INTO Client(nom_client, type_client, domaine_client, adresse_client, code_postal_client, ville_client, telephone_client, portable_client, mail_client)
	VALUES ('Piano Aqueux', 1, 'Club', '3 rue des Cordes', '60253', 'Partus', '0526795421', '0721789203', 'pianoaqueux.contact@gmail.com')

INSERT INTO Client(nom_client, type_client, domaine_client, adresse_client, code_postal_client, ville_client, telephone_client, portable_client, mail_client)
	VALUES ('Corde à gratter', 1,'Ecole de guitare', '64 rue des Peuplier', '20145', 'Plectre', '0256947215', '0612948537', 'corde.grattercontact@gmail.com')

-- Fournisseur

INSERT INTO Fournisseur(nom_fournisseur, adresse_fournisseur, code_postal_fournisseur, ville_fournisseur, telephone_fournisseur)
	VALUES ('Musique3000', '27 avenue du General Leclerc', '30526', 'Bertille', '0426948513')

INSERT INTO Fournisseur(nom_fournisseur, adresse_fournisseur, code_postal_fournisseur, ville_fournisseur, telephone_fournisseur)
	VALUES ('EquipSon', '30 rue Jean Moulin', '28167', 'Boutal', '0316497581')

INSERT INTO Fournisseur(nom_fournisseur, adresse_fournisseur, code_postal_fournisseur, ville_fournisseur, telephone_fournisseur)
	VALUES ('Jojomisu', '59 boulevard des valeurs', '60214', 'Nouvillet', '0638914675')

INSERT INTO Fournisseur(nom_fournisseur, adresse_fournisseur, code_postal_fournisseur, ville_fournisseur, telephone_fournisseur)
	VALUES ('Spatiorchestre', '62 rue du cosmos', '01675', 'Solenum', '0102030405')

INSERT INTO Fournisseur(nom_fournisseur, adresse_fournisseur, code_postal_fournisseur, ville_fournisseur, telephone_fournisseur)
	VALUES ('Doux Zephir', '68 rue des tempêtes', '26845', 'Tourmalin', '0759468214')

INSERT INTO Fournisseur(nom_fournisseur, adresse_fournisseur, code_postal_fournisseur, ville_fournisseur, telephone_fournisseur)
	VALUES ('Fournimusique', '78 rue des coquelicots', '56842', 'Longcourt', '0216457895')

-- Produit

INSERT INTO Produit(code_produit, libelle_court_produit, libelle_long_produit, prix_vente_produit, photo_produit, quantite_stock, tva_produit)
	VALUES (101, 'Guitare sèche 5 octaves', 'Guitare à 5 cordes, 5 octaves, fournis avec house et un kit de corde de rechange', 600, 'ftp:\\photo\Guitare\guitare01.png', 6, 20)

INSERT INTO Produit(code_produit, libelle_court_produit, libelle_long_produit, prix_vente_produit, photo_produit, quantite_stock, tva_produit)
	VALUES (201, 'Piano droit 4 octaves', 'Piano droit 1,5m x 0,8m, couvercle de protection des touches et tabouret inclut', 1200, 'ftp:\\photo\Piano\piano01.png', 2, 20)

INSERT INTO Produit(code_produit, libelle_court_produit, libelle_long_produit, prix_vente_produit, photo_produit, quantite_stock, tva_produit)
	VALUES (301, 'Saxophone Alto', 'Saxophone Alto neuf, fournis avec un jeu de hanches et une house de transport', 1000, 'ftp:\\photo\Saxophone\saxalto01.png', 15, 20)

INSERT INTO Produit(code_produit, libelle_court_produit, libelle_long_produit, prix_vente_produit, photo_produit, quantite_stock, tva_produit)
	VALUES (401, 'Basson 4 octave', 'Basson neuf, vendu avec un jeu de hanche, un harnais et une house de transport.', 1800, 'ftp:\\photo\Basson\basson01.png', 3, 20)

INSERT INTO Produit(code_produit, libelle_court_produit, libelle_long_produit, prix_vente_produit, photo_produit, quantite_stock, tva_produit)
	VALUES (102, 'Guitare Fender Strat 300', 'Guitare electrique vendu avec un ampli 30W, un cable Jack 1m50, un harnais et une house de transport, parfait pour un débutant.', 300, 'ftp:\\photo\Guitare\guitareelec01.png', 10, 20)

INSERT INTO Produit(code_produit, libelle_court_produit, libelle_long_produit, prix_vente_produit, photo_produit, quantite_stock, tva_produit)
	VALUES (501, 'Clarinette basse', 'Clarinette basse neuve, avec trépied, jeu de 3 hanchce, cordellière et house de transport.', 1200, 'ftp:\\photo\Clarinette\clarinettebasse01.png', 12, 20)

INSERT INTO Produit(code_produit, libelle_court_produit, libelle_long_produit, prix_vente_produit, photo_produit, quantite_stock, tva_produit)
	VALUES (601, 'Flute à bec' ,'Flute à bec neuve, avec 2 embouts et une house de rangement', 25, 'ftp:\\photo\Flute\flutebec01.png', 60, 20)

INSERT INTO Produit(code_produit, libelle_court_produit, libelle_long_produit, prix_vente_produit, photo_produit, quantite_stock, tva_produit)
	VALUES (701, 'Kit batterie', 'Kit batterie comprenant 2 symballes, 3 caisses, 1 caisse claire, 1 caisson basse, un tabouret et 2 jeux de baguettes', 800, 'ftp:\\photo\Batterie\baterrie01.png', 10, 20)

-- Rubrique

INSERT INTO Rubrique(nom_rubrique)
	VALUES ('Guitare')
INSERT INTO Rubrique(nom_rubrique)
	VALUES ('Guitare sèche')
INSERT INTO Rubrique(nom_rubrique)
	VALUES ('Guitare electrique')

INSERT INTO Rubrique(nom_rubrique)
	VALUES ('Piano')
INSERT INTO Rubrique(nom_rubrique)
	VALUES ('Piano Droit')

INSERT INTO Rubrique(nom_rubrique)
	VALUES ('Saxophone')
INSERT INTO Rubrique(nom_rubrique)
	VALUES ('Saxophone Alto')

INSERT INTO Rubrique(nom_rubrique)
	VALUES ('Basson')

INSERT INTO Rubrique(nom_rubrique)
	VALUES ('Clarinette')
INSERT INTO Rubrique(nom_rubrique)
	VALUES ('Clarinette basse')

INSERT INTO Rubrique(nom_rubrique)
	VALUES ('Flute')
INSERT INTO Rubrique(nom_rubrique)
	VALUES ('Flute à bec')

INSERT INTO Rubrique(nom_rubrique)
	VALUES ('Batterie')
INSERT INTO Rubrique(nom_rubrique)
	VALUES ('Cordes')
INSERT INTO Rubrique(nom_rubrique)
	VALUES ('Vents')
INSERT INTO Rubrique(nom_rubrique)
	VALUES ('Percussion')


-- Commercial

INSERT INTO Commercial(nom_commercial, prenom_commercial, mail_commercial, telephone_commercial)
	VALUES ('Billy', 'Joe', 'billyjoe@villagegreen.com', '06316497659')

INSERT INTO Commercial(nom_commercial, prenom_commercial, mail_commercial, telephone_commercial)
	VALUES ('Cobra', 'Phillipe', 'cobraphillipe@villagegreen.com', '0632976521')

INSERT INTO Commercial(nom_commercial, prenom_commercial, mail_commercial, telephone_commercial)
	VALUES ('Content', 'James', 'contentjames@villagegreen.com', '0689125678')

INSERT INTO Commercial(nom_commercial, prenom_commercial, mail_commercial, telephone_commercial)
	VALUES ('Forilet', 'Adam', 'foriletadam@villagegreen.com', '0698542391')

-- Adresse de facturation

INSERT INTO AdresseDeFacturation(adresse_facturation, code_postal_facturation, ville_facturation)
	VALUES ('4 rue de la Chocolatine', '56201', 'Budlin')

INSERT INTO AdresseDeFacturation(adresse_facturation, code_postal_facturation, ville_facturation)
	VALUES ('27 avenue du marais', '70685', 'Choucroutte')

INSERT INTO AdresseDeFacturation(adresse_facturation, code_postal_facturation, ville_facturation)
	VALUES ('6 rue des âmes', '60235', 'Central City')

INSERT INTO AdresseDeFacturation(adresse_facturation, code_postal_facturation, ville_facturation)
	VALUES ('39 rue du vent', '20685', 'Zephyr')

INSERT INTO AdresseDeFacturation(adresse_facturation, code_postal_facturation, ville_facturation)
	VALUES ('26 Rue de la Liberté', '60253', 'Partus')

INSERT INTO AdresseDeFacturation(adresse_facturation, code_postal_facturation, ville_facturation)
	VALUES ('52 avenue Pierre Curie', '20145', 'Sarolio')

-- Adresse de Livraison

INSERT INTO AdresseDeLivraison(adresse_livraison, code_postal_livraison, ville_livraison)
	VALUES ('4 rue de la Chocolatine', '56201', 'Budlin')

INSERT INTO AdresseDeLivraison(adresse_livraison, code_postal_livraison, ville_livraison)
	VALUES ('27 avenue du marais', '70685', 'Choucroutte')

INSERT INTO AdresseDeLivraison(adresse_livraison, code_postal_livraison, ville_livraison)
	VALUES ('6 rue des âmes', '60235', 'Central City')

INSERT INTO AdresseDeLivraison(adresse_livraison, code_postal_livraison, ville_livraison)
	VALUES ('70 rue du Moulin', '20685', 'Zephyr')

INSERT INTO AdresseDeLivraison(adresse_livraison, code_postal_livraison, ville_livraison)
	VALUES ('3 rue des Cordes', '60253', 'Partus')

INSERT INTO AdresseDeLivraison(adresse_livraison, code_postal_livraison, ville_livraison)
 VALUES ('30 rue Pasteur Entrepot 13', '20145', 'Douli')

 -- Commande

INSERT INTO Commande(paiement, date_commande, numero_facture, date_facture, date_paiement, code_client, code_facturation)
	VALUES (1, '11/03/2016', 1, '11/03/2016', '11/03/2016', 1, 1)

INSERT INTO Commande(paiement, date_commande, numero_facture, date_facture, date_paiement, code_client, code_facturation)
	VALUES (1, '28/03/2016', 2, '28/03/2016','28/03/2016' , 2, 2)

INSERT INTO Commande(paiement, date_commande, numero_facture, date_facture, date_paiement, code_client, code_facturation)
	VALUES (1, '03/04/2016', 3, '03/04/2016', '03/04/2016', 3, 3)

INSERT INTO Commande(paiement, date_commande, numero_facture, date_facture, date_paiement, code_client, code_facturation)
	VALUES (1, '15/04/2016', 4, '17/04/2016', '19/04/2016', 4, 4)

INSERT INTO Commande(paiement, date_commande, numero_facture, date_facture, code_client, code_facturation)
	VALUES (0, '20/04/2016', 5, '20/04/2016', 5, 5)

INSERT INTO Commande(paiement, date_commande, numero_facture, date_facture, date_paiement, code_client, code_facturation)
	VALUES (1, '02/05/2016', 6, '02/05/2016', '02/06/2016' , 6, 6)

INSERT INTO Commande(paiement, date_commande, numero_facture, date_facture, code_client, code_facturation)
	VALUES (0, '09/06/2016', 7, '09/06/2016', 4, 4)

-- compose

INSERT INTO compose(quantite_client, prix_client, tva_commande, code_produit, numero_commande)
	VALUES (4, 25, 20, 601, 1)
INSERT INTO compose(quantite_client, prix_client, tva_commande, code_produit, numero_commande)
	VALUES (1, 1000, 20, 301, 1)

INSERT INTO compose(quantite_client, prix_client, tva_commande, code_produit, numero_commande)
	VALUES (1, 600, 20, 101, 2)
INSERT INTO compose(quantite_client, prix_client, tva_commande, code_produit, numero_commande)
	VALUES (1, 1800, 20, 401, 2)

INSERT INTO compose(quantite_client, prix_client, tva_commande, code_produit, numero_commande)
	VALUES (1, 1200, 20, 201, 3)

INSERT INTO compose(quantite_client, prix_client, tva_commande, code_produit, numero_commande)
	VALUES (20, 25, 20, 601, 4)
INSERT INTO compose(quantite_client, prix_client, tva_commande, code_produit, numero_commande)
	VALUES (1, 1200, 20, 201, 4)
INSERT INTO compose(quantite_client, prix_client, tva_commande, code_produit, numero_commande)
	VALUES (2, 1200, 20, 501, 4)

INSERT INTO compose(quantite_client, prix_client, tva_commande, code_produit, numero_commande)
	VALUES (2, 800, 20, 701, 5)
INSERT INTO compose(quantite_client, prix_client, tva_commande, code_produit, numero_commande)
	VALUES (3, 1000, 20, 301, 5)

INSERT INTO compose(quantite_client, prix_client, tva_commande, code_produit, numero_commande)
	VALUES (4, 1200, 20, 201, 6)
INSERT INTO compose(quantite_client, prix_client, tva_commande, code_produit, numero_commande)
	VALUES (25, 25, 20, 601, 6)
INSERT INTO compose(quantite_client, prix_client, tva_commande, code_produit, numero_commande)
	VALUES (3, 1800, 20, 401, 6)

INSERT INTO compose(quantite_client, prix_client, tva_commande, code_produit, numero_commande)
	VALUES (1, 800, 20, 701, 7)

-- soccupe

INSERT INTO soccupe(code_client, code_commercial)
	VALUES (1, 1)

INSERT INTO soccupe(code_client, code_commercial)
	VALUES (2, 1)

INSERT INTO soccupe(code_client, code_commercial)
	VALUES (3, 4)

INSERT INTO soccupe(code_client, code_commercial)
	VALUES (4, 2)

INSERT INTO soccupe(code_client, code_commercial)
	VALUES (5, 3)

INSERT INTO soccupe(code_client, code_commercial)
	VALUES (6, 1)

-- contient

INSERT INTO contient(code_rubrique, code_rubrique_Rubrique)
	VALUES (1, 2)

INSERT INTO contient(code_rubrique, code_rubrique_Rubrique)
	VALUES (1, 3)

INSERT INTO contient(code_rubrique, code_rubrique_Rubrique)
	VALUES (4, 5)

INSERT INTO contient(code_rubrique, code_rubrique_Rubrique)
	VALUES (6, 7)

INSERT INTO contient(code_rubrique, code_rubrique_Rubrique)
	VALUES (15, 8)

INSERT INTO contient(code_rubrique, code_rubrique_Rubrique)
	VALUES (9, 10)

INSERT INTO contient(code_rubrique, code_rubrique_Rubrique)
	VALUES (11, 12)

INSERT INTO contient(code_rubrique, code_rubrique_Rubrique)
	VALUES (16, 13)

INSERT INTO contient(code_rubrique, code_rubrique_Rubrique)
	VALUES (14, 1)

INSERT INTO contient(code_rubrique, code_rubrique_Rubrique)
	VALUES (14, 4)

INSERT INTO contient(code_rubrique, code_rubrique_Rubrique)
	VALUES (15, 6)

INSERT INTO contient(code_rubrique, code_rubrique_Rubrique)
	VALUES (15, 9)

INSERT INTO contient(code_rubrique, code_rubrique_Rubrique)
	VALUES (15, 11)

--fait_parti

INSERT INTO fait_parti(code_produit, code_rubrique)
	VALUES (101, 2)
INSERT INTO fait_parti(code_produit, code_rubrique)
	VALUES (102, 3)
INSERT INTO fait_parti(code_produit, code_rubrique)
	VALUES (201, 5)
INSERT INTO fait_parti(code_produit, code_rubrique)
	VALUES (301, 7)
INSERT INTO fait_parti(code_produit, code_rubrique)
	VALUES (401, 8)
INSERT INTO fait_parti(code_produit, code_rubrique)
	VALUES (501, 10)
INSERT INTO fait_parti(code_produit, code_rubrique)
	VALUES (601, 12)
INSERT INTO fait_parti(code_produit, code_rubrique)
	VALUES (701, 13)

--fournis

INSERT INTO fournis(prix_achat, code_produit, code_fournisseur)
	VALUES (500, 101, 1)
INSERT INTO fournis(prix_achat, code_produit, code_fournisseur)
	VALUES (400, 101, 3)

INSERT INTO fournis(prix_achat, code_produit, code_fournisseur)
	VALUES (100, 102, 2)
INSERT INTO fournis(prix_achat, code_produit, code_fournisseur)
	VALUES (200, 102, 4)

INSERT INTO fournis(prix_achat, code_produit, code_fournisseur)
	VALUES (1000, 201, 6)
INSERT INTO fournis(prix_achat, code_produit, code_fournisseur)
	VALUES (800, 201, 4)

INSERT INTO fournis(prix_achat, code_produit, code_fournisseur)
	VALUES (800, 301, 5)
INSERT INTO fournis(prix_achat, code_produit, code_fournisseur)
	VALUES (850, 301, 2)

INSERT INTO fournis(prix_achat, code_produit, code_fournisseur)
	VALUES (1200, 401, 3)
INSERT INTO fournis(prix_achat, code_produit, code_fournisseur)
	VALUES (1400, 401, 6)

INSERT INTO fournis(prix_achat, code_produit, code_fournisseur)
	VALUES (900, 501, 4)
INSERT INTO fournis(prix_achat, code_produit, code_fournisseur)
	VALUES (950, 501, 1)

INSERT INTO fournis(prix_achat, code_produit, code_fournisseur)
	VALUES (10, 601, 2)
INSERT INTO fournis(prix_achat, code_produit, code_fournisseur)
	VALUES (5, 601, 5)

INSERT INTO fournis(prix_achat, code_produit, code_fournisseur)
	VALUES (700, 701, 2)
INSERT INTO fournis(prix_achat, code_produit, code_fournisseur)
	VALUES (650, 701, 3)

-- est_livre

INSERT INTO est_livre(quantite_livraison, date_livraison, code_livraison, code_produit, code_fournisseur)
	VALUES (200, '02/02/2016', 20156, 601, 5)

INSERT INTO est_livre(quantite_livraison, date_livraison, code_livraison, code_produit, code_fournisseur)
	VALUES (3, '06/03/2016', 23654, 201, 4)

INSERT INTO est_livre(quantite_livraison, date_livraison, code_livraison, code_produit, code_fournisseur)
	VALUES (6, '07/05/2016', 26485, 401, 3)

-- BonLivraison

INSERT INTO BonLivraison(date_livraison, code_adresse_livraison, numero_commande)
	VALUES ('17/03/2016', 1, 1)
INSERT INTO BonLivraison(date_livraison, code_adresse_livraison, numero_commande)
	VALUES ('27/03/2016', 1, 1)

INSERT INTO BonLivraison(date_livraison, code_adresse_livraison, numero_commande)
	VALUES ('04/04/2016', 2, 2)

INSERT INTO BonLivraison(date_livraison, code_adresse_livraison, numero_commande)
	VALUES ('10/04/2016', 3, 3)

INSERT INTO BonLivraison(date_livraison, code_adresse_livraison, numero_commande)
	VALUES ('25/04/2016', 4, 4)
INSERT INTO BonLivraison(date_livraison, code_adresse_livraison, numero_commande)
	VALUES ('27/04/2016', 4, 4)

INSERT INTO BonLivraison(date_livraison, code_adresse_livraison, numero_commande)
	VALUES ('30/04/2016', 5, 5)
INSERT INTO BonLivraison(date_livraison, code_adresse_livraison, numero_commande)
	VALUES ('02/05/2016', 5, 5)

INSERT INTO BonLivraison(date_livraison, code_adresse_livraison, numero_commande)
	VALUES ('12/05/2016', 6, 6)
INSERT INTO BonLivraison(date_livraison, code_adresse_livraison, numero_commande)
	VALUES ('17/05/2016', 6, 6)

INSERT INTO BonLivraison(date_livraison, code_adresse_livraison, numero_commande)
	VALUES ('19/06/2016', 4, 7)

--regroupe

INSERT INTO regroupe(quantite_livre_client, code_produit, code_livraison)
	VALUES (1, 301, 1)
INSERT INTO regroupe(quantite_livre_client, code_produit, code_livraison)
	VALUES (2, 601, 1)
INSERT INTO regroupe(quantite_livre_client, code_produit, code_livraison)
	VALUES (2, 601, 2)

INSERT INTO regroupe(quantite_livre_client, code_produit, code_livraison)
	VALUES (1, 401, 3)
INSERT INTO regroupe(quantite_livre_client, code_produit, code_livraison)
	VALUES (1, 101, 3)

INSERT INTO regroupe(quantite_livre_client, code_produit, code_livraison)
	VALUES (1, 201, 4)

INSERT INTO regroupe(quantite_livre_client, code_produit, code_livraison)
	VALUES (20, 601, 5)
INSERT INTO regroupe(quantite_livre_client, code_produit, code_livraison)
	VALUES (1, 201, 6)
INSERT INTO regroupe(quantite_livre_client, code_produit, code_livraison)
	VALUES (2, 501, 6)

INSERT INTO regroupe(quantite_livre_client, code_produit, code_livraison)
	VALUES (2, 701, 7)
INSERT INTO regroupe(quantite_livre_client, code_produit, code_livraison)
	VALUES (2, 301, 7)
INSERT INTO regroupe(quantite_livre_client, code_produit, code_livraison)
	VALUES (1, 301, 8)

INSERT INTO regroupe(quantite_livre_client, code_produit, code_livraison)
	VALUES (25, 601, 9)
INSERT INTO regroupe(quantite_livre_client, code_produit, code_livraison)
	VALUES (1, 401, 9)
INSERT INTO regroupe(quantite_livre_client, code_produit, code_livraison)
	VALUES (2, 201, 9)
INSERT INTO regroupe(quantite_livre_client, code_produit, code_livraison)
	VALUES (2, 401, 10)
INSERT INTO regroupe(quantite_livre_client, code_produit, code_livraison)
	VALUES (2, 201, 10)

INSERT INTO regroupe(quantite_livre_client, code_produit, code_livraison)
	VALUES (1, 701, 11)


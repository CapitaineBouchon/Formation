USE Fil_rouge
GO

--Chiffre d'affaire généré pour l'ensemble et par fournisseur

SELECT nom_fournisseur, SUM(quantite_client * prix_client * ((tva_commande / 100) + 1)) AS "Chiffre d'affaire" FROM compose
JOIN fournis ON fournis.code_produit = compose.code_produit
JOIN Fournisseur ON Fournisseur.code_fournisseur = fournis.code_fournisseur
GROUP BY nom_fournisseur

SELECT SUM(quantite_client * prix_client * ((tva_commande / 100) + 1)) AS "Chiffre d'affaire" FROM compose

--Liste des produits commandés (ref produit, qte commandé)

SELECT code_produit, SUM(quantite_client) AS "Total commandé" FROM compose
GROUP BY code_produit

--- Liste des commandes pour un client (date, ref client, montant)

SELECT code_client, date_commande, SUM(quantite_client * prix_client * ((tva_commande / 100) + 1)) AS "Montant commande" FROM compose
JOIN Commande ON Commande.numero_commande = compose.numero_commande
GROUP BY code_client, date_commande

-- Répartition du chiffre d'affaire par type de client
SELECT type_client, SUM(quantite_client * prix_client * ((tva_commande / 100) + 1)) AS "Chiffre d'affaire" FROM compose
JOIN Commande ON Commande.numero_commande = compose.numero_commande
JOIN Client ON Client.code_client = Commande.code_client
GROUP BY type_client


--- Lister les commandes en cours de livraison.

SELECT BonLivraison.numero_commande, SUM(quantite_livre_client) AS "Produit Livré", compose.code_produit FROM BonLivraison
JOIN compose ON compose.numero_commande = BonLivraison.numero_commande
JOIN regroupe ON regroupe.code_livraison = BonLivraison.code_livraison
GROUP BY BonLivraison.numero_commande, quantite_client, compose.code_produit
HAVING quantite_client > SUM(quantite_livre_client)


GO
CREATE PROC commande_en_livraison
AS
SELECT BonLivraison.numero_commande, SUM(quantite_livre_client) AS "Produit Livré", compose.code_produit FROM BonLivraison
JOIN compose ON compose.numero_commande = BonLivraison.numero_commande
JOIN regroupe ON regroupe.code_livraison = BonLivraison.code_livraison
GROUP BY BonLivraison.numero_commande, quantite_client, compose.code_produit
HAVING quantite_client > SUM(quantite_livre_client)
GO

EXEC commande_en_livraison

CREATE PROC delai_commande
AS
SELECT AVG(DATEDIFF(dd, date_commande, date_facture)) AS "Moyenne de facturation" FROM Commande
GO

EXEC delai_commande



GO
CREATE VIEW produit_fournisseur
AS
SELECT Produit.code_produit, libelle_court_produit, quantite_stock, prix_achat, prix_vente_produit, Fournisseur.code_fournisseur, reference_fournisseur, nom_fournisseur, adresse_fournisseur, code_postal_fournisseur, ville_fournisseur, telephone_fournisseur FROM Fournisseur
JOIN fournis ON fournis.code_fournisseur = Fournisseur.code_fournisseur
JOIN Produit ON Produit.code_produit = fournis.code_produit

GO

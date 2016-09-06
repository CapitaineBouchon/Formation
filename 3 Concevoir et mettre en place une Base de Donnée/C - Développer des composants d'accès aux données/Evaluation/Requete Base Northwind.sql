USE Northwind
GO

--1 - Liste des contacts français :


SELECT CompanyName AS "Société", ContactName AS "Contact", ContactTitle AS "Fonction", Phone AS "Téléphone" FROM Customers
WHERE Country = 'France'


--2 Produits vendus par le fournisseur « Exotic Liquids » :

SELECT ProductName AS "Produit", UnitPrice AS "Prix" FROM Products
JOIN Suppliers ON Suppliers.SupplierID = Products.SupplierID
WHERE CompanyName = 'Exotic Liquids'

--3 Nombre de produits vendus par les fournisseurs Français dans l’ordre décroissant :


SELECT CompanyName AS "Fournisseur", COUNT(*) AS "Nbre produits" FROM Suppliers
JOIN Products ON products.SupplierID = Suppliers.SupplierID
WHERE Country = 'France'
GROUP BY CompanyName
ORDER BY COUNT(*) DESC

--4 Liste des clients Français ayant plus de 10 commandes :

SELECT CompanyName AS "Client", COUNT(*) AS "Nbre commandes" FROM Customers
JOIN Orders ON Orders.CustomerID = Customers.CustomerID
WHERE Country = 'France'
GROUP BY CompanyName
HAVING COUNT(*) > 10

--5  Liste des clients ayant un chiffre d’affaires > 30.000 :

SELECT CompanyName AS "Client", SUM(UnitPrice * quantity) AS "CA", Country AS "Pays" FROM Customers
JOIN Orders ON orders.CustomerID = Customers.CustomerID
JOIN [Order Details] ON [Order Details].OrderID = Orders.OrderID
GROUP BY CompanyName, Country
HAVING SUM(UnitPrice * Quantity) > 30000
ORDER BY SUM(UnitPrice * Quantity) DESC

--6 Liste des pays dont les clients ont passé commande de produits fournis par « Exotic Liquids » :

SELECT DISTINCT Customers.Country FROM Customers
JOIN Orders ON orders.CustomerID = Customers.CustomerID
JOIN [Order Details] ON [Order Details].OrderID = Orders.OrderID
JOIN Products ON Products.ProductID = [Order Details].ProductID
JOIN Suppliers ON Suppliers.SupplierID = Products.SupplierID
WHERE Suppliers.CompanyName = 'Exotic Liquids'


-- 7 Montant des ventes de 1997 :

SELECT SUM(UnitPrice * Quantity) AS "Montant Ventes 97" FROM Orders
JOIN [Order Details] ON [Order Details].OrderID = Orders.OrderID
WHERE YEAR(OrderDate) = 1997


-- 8 Montant des ventes de 1997 mois par mois :

SELECT MONTH(OrderDate) AS "Mois 97", SUM(UnitPrice * Quantity) AS "Montant Ventes" FROM Orders
JOIN [Order Details] ON [Order Details].OrderID = Orders.OrderID
WHERE YEAR(OrderDate) = 1997
GROUP BY MONTH(OrderDate)
ORDER BY MONTH(OrderDate)

--9 Depuis quelle date le client « Du monde entier » n’a plus commandé ?

SELECT MAX(OrderDate) AS "Date de dernière commande" FROM Orders
JOIN Customers ON Customers.CustomerID = Orders.CustomerID
WHERE CompanyName = 'Du monde entier'

--10 Quel est le délai moyen de livraison en jours ?

SELECT AVG(DATEDIFF(dd, OrderDate, ShippedDate)) AS "Délai moyen de livraison en jours" FROM Orders


--Procédure stockée pour n° 9
GO
CREATE PROC derniere_commande
	@client VARCHAR(50)
	AS
		SELECT MAX(OrderDate) AS "Date de dernière commande" FROM Orders
		JOIN Customers ON Customers.CustomerID = Orders.CustomerID
		WHERE CompanyName = @client


EXEC derniere_commande 'Du monde entier'

--Procédure stockée pour n°10

CREATE PROC delai_moyen_livraison
	AS	
		SELECT AVG(DATEDIFF(dd, OrderDate, ShippedDate)) AS "Délai moyen de livraison en jours" FROM Orders


EXEC delai_moyen_livraison




SELECT Customers.Region FROM Customers

SELECT Suppliers.Region FROM Suppliers 


CREATE TRIGGER Transport_produit ON [Order Details] FOR INSERT
AS IF
	(SELECT Orders.ShipRegion FROM inserted
	JOIN Orders ON Orders.OrderID = inserted.OrderID)
	
	<> 
	
	(SELECT Suppliers.Region FROM inserted
	JOIN Products ON Products.ProductID = inserted.ProductID
	JOIN Suppliers ON Suppliers.SupplierID = Products.SupplierID)
	--Alors
	PRINT 'Attention, des coûts de livraisons supplémentaires vont être ajoutés'


DROP TRIGGER Transport_produit

SELECT * FROM Suppliers WHERE SupplierID = 25
SELECT * FROM Products WHERE SupplierID = 25 --ProductsID 54 et 55 

SELECT DISTINCT CustomerID FROM Orders  -- HUNGO en customerID

INSERT INTO [Order Details] (OrderID, ProductID, UnitPrice, Quantity, Discount)
VALUES (11063, 55, 24.00, 10, 0)

INSERT INTO [Order Details] (OrderID, ProductID, UnitPrice, Quantity, Discount)
VALUES (11063, 54, 7.45, 10, 0)

DELETE FROM [Order Details] WHERE OrderID=11063 AND ProductID=54 AND Quantity=10
DELETE FROM [Order Details] WHERE OrderID=11063 AND ProductID=55 AND Quantity=10


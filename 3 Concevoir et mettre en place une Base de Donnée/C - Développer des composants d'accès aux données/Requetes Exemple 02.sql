USE exemple
GO

--1 
SELECT employe.prenom, dept.noregion From employe
JOIN dept ON employe.nodep = dept.nodept

--2
SELECT dept.noregion, dept.nom as Departement, employe.nom AS Employe FROM dept
JOIN employe ON dept.nodept = employe.nodep ORDER BY dept.noregion asc

--3
SELECT employe.nom, dept.nom FROM employe WHERE nom='Amartakaldire'

--4
SELECT nom FROM employe where nodep IN (
	SELECT nodept FROM dept WHERE nom='Distribution')

--5
SELECT employe.nom, employe.salaire, patron.nom, patron.salaire FROM employe
JOIN employe AS patron ON employe.nosup=patron.noemp
WHERE employe.salaire > patron.salaire

--6
SELECT employe.nom, employe.salaire, amartakaldire.nom, amartakaldire.salaire FROM employe
JOIN employe AS amartakaldire ON amartakaldire.nom='amartakaldire'
WHERE employe.salaire > amartakaldire.salaire

SELECT employe.nom, employe.salaire, amartakaldire.nom, amartakaldire.salaire 
FROM employe, employe AS amartakaldire 
WHERE amartakaldire.nom='amartakaldire' and employe.salaire > amartakaldire.salaire

--7
SELECT employe.nom, employe.titre, amartakaldire.nom, amartakaldire.titre FROM employe
JOIN employe AS amartakaldire ON amartakaldire.noemp = 15
WHERE employe.titre = amartakaldire.titre

--8
SELECT nom, titre FROM employe WHERE titre LIKE (
	SELECT titre FROM employe WHERE nodep = 32) AND nodep = 31

--9
SELECT nom, titre, salaire FROM employe WHERE titre = (
	SELECT titre FROM employe WHERE nom='Fairent') AND salaire = (
	SELEct salaire FROM employe WHERE nom='Fairent')

--10
SELECT nom, titre FROM employe WHERE titre = (
	SELECT titre FROM employe WHERE nom='Amartakaldire')

--10,I
SELECT nom, salaire, nodep FROM employe WHERE salaire > ANY (
	SELECT salaire FROM employe WHERE nodep = 31)
	ORDER BY nodep ASC, salaire ASC

--10,II
SELECT nom, salaire, nodep FROM employe WHERE salaire > ALL (
	SELECT salaire FROM employe WHERE nodep = 31)
	ORDER BY nodep ASC, salaire ASC

--13
SELECT nom, titre FROM employe WHERE nodep=31 AND titre IN (
	SELECT titre FROM employe WHERE nodep=32)

--14
SELECT nom, titre FROM employe WHERE nodep=31 AND titre NOT IN (
	SELECT titre FROM employe WHERE nodep=32)

--15
SELECT nom, titre, salaire FROM employe WHERE titre LIKE (
	SELECT titre FROM employe WHERE nom='Fairent') AND salaire = (
	SELECT salaire FROM employe WHERE nom='Fairent')

--16
SELECT nodep, nom, salaire FROM employe WHERE salaire > ANY (
	SELECT avg(salaire) FROM employe GROUP BY nodep) ORDER BY nodep

--17
SELECT noemp, nom, prenom FROM employe WHERE nodep = ANY (
	SELECT nodep FROM employe WHERE titre='Représentant')

--18


--19
SELECT dept.nodept, dept.nom AS 'Departement', employe.nom FROM dept
LEFT JOIN employe ON employe.nodep=dept.nodept
ORDER BY dept.nodept




--1
SELECT titre, COUNT(titre) FROM employe GROUP BY titre

--2
SELECT AVG(employe.salaire)AS Moyenne, SUM(employe.salaire)AS Somme, dept.noregion FROM employe
JOIN dept ON dept.nodept=employe.nodep
GROUP BY dept.noregion

--3
SELECT nodep, COUNT(noemp) FROM employe GROUP BY nodep HAVING COUNT(noemp) >= 3

--4
SELECT SUBSTRING(nom, 1, 1), COUNT(*) FROM employe GROUP BY SUBSTRING(nom, 1, 1) HAVING COUNT(*)>= 3

--5
SELECT MIN(salaire), MAX(salaire), MAX(salaire)-MIN(salaire) FROM employe

--6
SELECT COUNT(DISTINCT titre) FROM employe

--7
SELECT titre, COUNT(titre) FROM employe GROUP BY titre

--8
SELECT dept.nodept, dept.nom, COUNT(*) FROM employe
JOIN dept ON dept.nodept = employe.nodep
GROUP BY dept.nodept, dept.nom

--9
SELECT titre, AVG(salaire) FROM employe GROUP BY titre HAVING AVG(salaire) > (SELECT AVG(salaire) FROM employe WHERE titre='Représentant')

--10
SELECT COUNT(salaire), COUNT(tauxcom) FROM employe


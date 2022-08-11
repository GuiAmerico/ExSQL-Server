/*
SELECT a.ContactName, a.Region,b.ContactName,b.Region
FROM Customers AS a, Customers AS b
WHERE a.region = b.region
*/


/*
SELECT a.FirstName, a.HireDate, b.FirstName,b.HireDate
FROM Employees AS a , Employees AS b
WHERE  DATEPART(YEAR, a.HireDate) = DATEPART(YEAR, b.HireDate)

SELECT a.ProductID, a.Discount, b.ProductID, b.Discount 
FROM [Order Details] AS a ,[Order Details] AS b
WHERE a.Discount = b.Discount

*/

/*
INSERT INTO Canal(CanalID, Nome, [Contagem Inscritos], [Data de Criacao])
VALUES (1, 'Dev Aprender' , 187000, 2018/10/7)
*/

/*
INSERT INTO Canal(CanalID, Nome, [Contagem Inscritos], [Data de Criacao])
VALUES (2, 'Código Fonte TV' , 1475000, 2009/8/6)
*/

/*
UPDATE Canal SET [Contagem Inscritos] = 475000
WHERE CanalID = 2
*/
/*
DELETE FROM Canal WHERE CanalID = 2
*/

ALTER TABLE Canal
ADD ativo bit

ALTER TABLE Canal
ALTER COLUMN ativo TINYINT 


EXEC sp_RENAME 'Canal.ativo', 'Status', 'COLUMN'


EXEC sp_RENAME 'Canal.Status', 'Ativo', 'COLUMN'

USE AdventureWorks2017

DROP TABLE ErrorLog

TRUNCATE TABLE Person.Password


CREATE TABLE CarteiraDeMotorista(
	Id INT NOT NULL,
	Nome VARCHAR(150) NOT NULL,
	Idade INT CHECK(Idade >= 18)
);
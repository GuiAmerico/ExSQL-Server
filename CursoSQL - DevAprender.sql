/*SELECT *
FROM person.Person
WHERE LastName = 'Miller' AND FirstName = 'Anna'*/

/*SELECT *
FROM Production.Product
WHERE Color = 'Red' OR Color = 'Blue' */

/*SELECT *
FROM Production.Product
WHERE Color <> 'Red' and Color <> 'Blue'*/
/*SELECT *
FROM Production.Product
WHERE ListPrice > 1500 AND ListPrice < 3000*/
 
--           DESAFIO 1
/*SELECT Name
FROM Production.Product
WHERE Weight > 500 and Weight < 700*/

--           DESAFIO 2
/*SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'M' and SalariedFlag = 1*/

--           DESAFIO 3
/*SELECT *
FROM Person.Person
WHERE FirstName = 'Peter' AND LastName = 'Krebs'

Select *
FROM Person.EmailAddress
WHERE BusinessEntityID = 26*/

/*SELECT count(DISTINCT Title)
FROM person.Person*/

--          DESAFIO 4
/*SELECT count(*)
FROM Production.Product

--          DESAFIO 5
SELECT count(size)
FROM Production.Product

--          DESAFIO 6
SELECT count(DISTINCT size)
FROM Production.Product*/

/*SELECT TOP 15 *
FROM Production.Product*/

/*SELECT DISTINCT FirstName FROM Person.Person 

ORDER BY FirstName desc*/

--          DESAFIO 1

/*SELECT TOP 10 ProductID, ListPrice FROM Production.Product
ORDER BY ListPrice desc*/

--            DESAFIO 2
/*SELECT TOP 4 Name, ProductNumber FROM Production.Product
ORDER BY ProductID asc*/

/*SELECT * FROM Production.Product
WHERE ListPrice NOT BETWEEN 1000 AND 1500 */

/*SELECT * FROM HumanResources.Employee
WHERE HireDate BETWEEN '2007/01/01' AND '2009/01/01'*/

/*SELECT * FROM Person.Person
WHERE BusinessEntityID IN (5,7,9)
ORDER BY BusinessEntityID desc*/

/*SELECT FirstName FROM Person.Person
WHERE FirstName LIKE 'haz%' --'&az%

SELECT FirstName FROM Person.Person
WHERE FirstName LIKE 'haze_'*/

--          DESAFIO 1
/*SELECT COUNT(*) 
FROM Production.Product
WHERE ListPrice > 1500*/

--      DESAFIO 2
/*SELECT COUNT(LastName)
FROM Person.Person
WHERE LastName LIKE 'P%'*/

--           DESAFIO3
/*SELECT COUNT (DISTINCT City)
FROM  Person.Address*/

--             DESAFIO 4
--SELECT DISTINCT(City) FROM Person.Address

--               DESAFIO 5

/*SElECT COUNT(*) 
FROM Production.Product
WHERE Color LIKE 'Red' AND ListPrice BETWEEN 500 AND 1000*/

/*SELECT COUNT(*) FROM Production.Product
WHERE Name LIKE '%Road%'*/

/*SELECT TOP 10 sum(linetotal) as soma
FROM Sales.SalesOrderDetail

SELECT TOP 10 min(linetotal)
FROM Sales.SalesOrderDetail


SELECT TOP 10 max(linetotal)
FROM Sales.SalesOrderDetail


SELECT TOP 10 avg(linetotal)
FROM Sales.SalesOrderDetail*/

/*SELECT * FROM Sales.SalesOrderDetail*/

/*SELECT SpecialOfferID, sum(UnitPrice) as 'SOMA'
FROM Sales.SalesOrderDetail
group by SpecialOfferID*/

/*SELECT ProductID, COUNT(ProductID) as 'Contagem'
FROM Sales.SalesOrderDetail
GROUP BY ProductID*/

/*SELECT FirstName, COUNT(FirstName) as "QntdNomes"
FROM Person.Person
GROUP BY FirstName*/

/*SELECT Color, AVG(ListPrice) FROM Production.Product
WHERE Color LIKE 'Silver'
GROUP BY Color*/


--            DESAFIO 1
/*SELECT MiddleName, COUNT(MiddleName) FROM Person.Person
GROUP BY MiddleName*/

--             DESAFIO 2

/*SELECT ProductID, AVG(OrderQty) as "Vendas"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
*/

--           DESAFIO 3
/*SELECT TOP 10  ProductID,sum(LineTotal)
FROM Sales.SalesOrderDetail
GROUP BY ProductID

ORDER BY sum(LineTotal) DESC
*/

--            DESAFIO 4

/*SELECT  ProductID, COUNT(*) as QntdProd, AVG(WorkOrderID) as 'MEDIA'
FROM Production.WorkOrder
GROUP BY ProductID
*/

/*SELECT FirstName,COUNT(FirstName) as 'Quantidade'
FROM Person.Person
GROUP BY FirstName
HAVING COUNT(FirstName) > 10
*/

/*SELECT ProductID, SUM(LineTotal)
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) BETWEEN 162000 AND 500000
*/

/* SELECT TOP 10 FirstName, COUNT(FirstName) AS "QUANTIDADE"
FROM Person.Person
GROUP BY FirstName
HAVING COUNT(FirstName) > 10


SELECT FirstName, COUNT(FirstName) AS "QUANTIDADE"
FROM Person.Person
WHERE Title = 'Mr.'
GROUP BY FirstName
HAVING COUNT(FirstName) > 10
*/

/*
SELECT * FROM Person.Address

SELECT SUM( StateProvinceID) AS 'Provícias', COUNT(StateProvinceID) AS 'Quantidade' FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT(StateProvinceID) > 1000

*/


/*SELECT ProductID, AVG(LineTotal) FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(LineTotal) < 1000000
*/

/*SELECT TOP 10 FirstName AS Nome, LastName AS Sobrenome FROM Person.Person

SELECT TOP 10 ProductNumber AS "Nome Do Produto" FROM Production.Product
*/

/*
SElECT p.BusinessEntityID, p.Firstname, pe.EmailAddress
FROM Person.Person AS P
INNER JOIN Person.EmailAddress AS PE ON p.BusinessEntityID = pe.BusinessEntityID

SELECT TOP 10 * FROM Person.Password
*/

/*
SELECT TOP 10 * FROM Production.Product
SELECT TOP 10 p.ProductSubcategoryID ,p.ListPrice, p.Name, ps.Name
FROM Production.product AS p 
INNER JOIN Production.ProductSubcategory ps ON p.ProductModelID = ps.ProductSubcategoryID

SELECT TOP 10 * FROM Production.ProductSubcategory
SELECT TOP 10 * FROM Production.ProductSubcategory
*/

/*SELECT TOP 10 * FROM Person.PhoneNumberType

SELECT TOP 10 * FROM Person.PersonPhone


SELECT TOP 10 pp.BusinessEntityID,  pnt.Name, pnt.PhoneNumberTypeID, pp.PhoneNumber
FROM Person.PersonPhone AS pp
INNER JOIN Person.PhoneNumberType AS pnt ON pp.PhoneNumberTypeID = pnt.PhoneNumberTypeID

*/

/*
SELECT TOP 10 * FROM Person.StateProvince 

SELECT TOP 10 * FROM Person.Address

SELECT TOP 10 a.AddressID, a.City, sp.StateProvinceID, sp.Name 
FROM Person.Address AS a
INNER JOIN Person.StateProvince AS sp ON  sp.StateProvinceID = a.StateProvinceID
*/

/*SELECT p.BusinessEntityID, p.FirstName, pcc.CreditCardID
FROM Person.Person AS p
LEFT JOIN Sales.PersonCreditCard AS pcc ON p.BusinessEntityID = pcc.BusinessEntityID
*/
/*
SELECT PersonType,FirstName
FROM Person.Person
WHERE Title = 'Mr.'
UNION
SELECT MiddleName, LastName
FROM Person.Person
WHERE FirstName = 'Aaron'
ORDER BY FirstName ASC
*/

/*SELECT 
BusinessEntityID,
DATEPART(MONTH,ModifiedDate)AS 'Mes',
DATEPART(YEAR,ModifiedDate) AS 'Ano'
FROM Person.Person
*/

/*
SELECT TOP 20 CONCAT(FirstName,' ',MiddleName,' ',LastName) AS 'Nome Completo'
FROM Person.Person

SELECT LastName,LEN(LastName) AS 'QntdDeLetras'
FROM Person.Person

SELECT FirstName,
UPPER(FirstName) AS 'Maiusculo',
LOWER(FirstName) AS 'Minusculo'
FROM Person.Person

SELECT TOP 20 FirstName, SUBSTRING(FirstName,1,4)
FROM Person.Person

SELECT TOP 10 ProductNumber,REPLACE(ProductNumber,'-','_') 
FROM Production.Product

*/

/*
SELECT pp.BusinessEntityID,pp.FirstName, e.JobTitle 
FROM Person.Person AS pp
INNER JOIN HumanResources.Employee AS e 
ON e.BusinessEntityID = pp.BusinessEntityID
WHERE JobTitle = 'Design Engineer'

SELECT FirstName
FROM Person.Person
Where BusinessEntityID IN (SELECT BusinessEntityID FROM HumanResources.Employee WHERE JobTitle = 'Design Engineer')

SELECT * 
FROM Person.Address
WHERE StateProvinceID IN (SELECT StateProvinceID FROM Person.StateProvince WHERE StateProvinceID = 1)

SELECT * FROM Person.StateProvince
WHERE Name = 'Alberta'

*/



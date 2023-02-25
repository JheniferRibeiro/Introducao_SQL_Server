SELECT COUNT (*) FROM TABELA 
SELECT COUNT (*) FROM person.person

SELECT COUNT (*) FROM Production.Product; 504
SELECT COUNT (Size) FROM Production.Product; 211
SELECT COUNT (distinct Size) FROM Production.Product; 18

SELECT TOP 00 * FROM tabela
SELECT TOP 10 * FROM production.Product;

SELECT * FROM person.person ORDER BY FirstName asc;
SELECT * FROM person.person ORDER BY FirstName asc , LastName desc;
SELECT FirstName,LastName FROM person.person ORDER BY FirstName asc , LastName desc;
SELECT TOP 10 (ProductID) FROM production.Product ORDER BY ListPrice desc;
SELECT * FROM production.Product;
SELECT Name FROM 
SELECT TOP 4 ProductNumber, Name FROM Production.Product ORDER by ProductID asc

SELECT * FROM Production.Product WHERE ListPrice  between 1000 and 1500;
SELECT * FROM HumanResources.Employee WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01' ORDER BY HireDate asc;
SELECT * FROM Production.Product WHERE Color IN ('blue','red');
SELECT * FROM person.Person WHERE BusinessEntityID IN (2,7,13);

SELECT * FROM person.Person WHERE FirstName like 'ovi%';
SELECT * FROM person.Person WHERE FirstName like '%to';
SELECT * FROM person.Person WHERE FirstName like '%to%';
SELECT * FROM person.Person WHERE FirstName like '%to_';

SELECT COUNT (ListPrice) FROM Production.Product WHERE ListPrice > 1500;
SELECT COUNT (LastName) FROM person.Person WHERE LastName like 'P%';
SELECT COUNT (Distinct City) FROM Person.Address;
SELECT * FROM Person.Address
SELECT Distinct City FROM Person.Address;
SELECT COUNT (*) FROM Production.Product WHERE Color ='red' and ListPrice between 500 and 1000;
SELECT COUNT (Name) FROM Production.Product WHERE Name like '%road%';

SELECT * FROM person.person;

SELECT Title FROM person.person;

SELECT lastName, FirstName FROM person.person;

SELECT DISTINCT p.FirstName, p.LastName FROM Person.Person AS p;

SELECT DISTINCT FirstName FROM person.person;

SELECT DISTINCT LastName FROM person.person;

SELECT * FROM person.person WHERE LastName = 'miller';
SELECT * FROM production.Product WHERE ListPrice > 1500;
SELECT * FROM color  WHERE RED

SELECT * FROM production.Product WHERE weight > 500 and weight <700;
SELECT * FROM HumanResources.Employee WHERE MaritalStatus = 'M' and SalariedFlag = 1;

SELECT * FROM person.person WHERE FirstName = 'Peter' and LastName = 'Krebs';
SELECT * FROM person.EmailAddress WHERE BusinessEntityID = 26;
Select p.FirstName, p.LastName, e.EmailAddress from Person.Person as p join Person.EmailAddress as e on p.BusinessEntityID = e.BusinessEntityID where p.LastName = 'Krebs' and P.FirstName = 'Peter'

SELECT COUNT (*) FROM TABELA 
SELECT * FROM person.person

USE AdventureWorks2017;

SELECT TOP 10 SUM(linetotal) AS "Soma" FROM Sales.SalesOrderDetail;
SELECT TOP 10 MIN(linetotal) FROM Sales.SalesOrderDetail;
SELECT TOP 10 MAX(linetotal) FROM Sales.SalesOrderDetail;
SELECT TOP 10 AVG(linetotal) FROM Sales.SalesOrderDetail;

SELECT * FROM Sales.SalesOrderDetail;
SELECT SpecialOfferID, SUM(UnitPrice) AS "SOMA" FROM Sales.SalesOrderDetail GROUP BY SpecialOfferID;
SELECT SpecialOfferID, UnitPrice FROM Sales.SalesOrderDetail WHERE SpecialOfferID = 9;

SELECT ProductId, COUNT(ProductId) AS "CONTAGEM" FROM Sales.SalesOrderDetail GROUP BY ProductID;
SELECT FirstName, COUNT(FirstName) AS "CONTAGEM" FROM Person.Person GROUP BY FirstName;

SELECT * FROM Production.Product;
SELECT Color, AVG (Listprice) FROM Production.Product WHERE Color = 'Silver' GROUP BY Color;

SELECT * FROM Person.Person;
SELECT MiddleName, COUNT (MiddleName) AS "CONTAGEM" FROM Person.Person GROUP BY MiddleName;

SELECT * FROM Sales.SalesOrderDetail;
SELECT ProductID, AVG (OrderQty) AS MEDIA FROM Sales.SalesOrderDetail GROUP BY ProductID;
SELECT * FROM Sales.SalesOrderDetail;
SELECT TOP 10 SUM(Linetotal) AS VENDAS FROM Sales.SalesOrderDetail GROUP BY ProductID ORDER BY ProductID DESC;
SELECT * FROM Production.WorkOrder;
SELECT productID, COUNT(productID) "CONTAGEM", AVG(OrderQty) AS "MEDIA" FROM Production.WorkOrder GROUP BY ProductID;

SELECT FirstName, COUNT(FirstName) AS "QUANTIDADE" FROM Person.Person WHERE Title = 'Mr.' GROUP BY FirstName HAVING COUNT(FirstName) >10;
SELECT ProductID, SUM(Linetotal) AS "TOTAL" FROM Sales.SalesOrderDetail GROUP BY ProductID HAVING SUM(LineTotal) between 162000 and 500000;

SELECT * FROM person.Address;
SELECT StateProvinceID AS 'ID da Província', COUNT(StateProvinceID) AS CONTAGEM FROM Person.Address GROUP BY StateprovinceID HAVING COUNT(StateProvinceID) >1000;
SELECT * FROM Sales.SalesOrderDetail;
SELECT ProductID, COUNT(ProductID) AS CONTAGEM, AVG(LineTotal) AS "MEDIA" FROM Sales.SalesOrderDetail GROUP BY ProductID HAVING AVG(LineTotal) <1000000;

SELECT TOP 10 ListPrice AS Preço FROM Production.Product;






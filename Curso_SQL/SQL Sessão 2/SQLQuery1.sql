-- Tipos de joins + desafios.
USE AdventureWorks2017;
-- LEFT OUTER JOIN -- LEFT JOIN

--QUERO DESCOBRIR QUAIS PESSOAS TEM UM CARTÃO DE CRÉDITO REGISTRADO

SELECT * FROM Person.Person PP
INNER JOIN Sales.PersonCreditCard PC 
ON PP.BusinessEntityID = PC.BusinessEntityID;
-- INNER JOIN: 19118
SELECT * FROM Person.Person PP
LEFT JOIN Sales.PersonCreditCard PC 
ON PP.BusinessEntityID = PC.BusinessEntityID;
-- LEFT JOIN: 19972
SELECT * FROM Person.Person PP
LEFT JOIN Sales.PersonCreditCard PC 
ON PP.BusinessEntityID = PC.BusinessEntityID
WHERE PC.BusinessEntityID IS NULL;

-- OPERADOR UNION COMBINA DOIS OU MAIS RESULTADOS DE UM SELECT E, I, RESULTADO APENAS

SELECT [ProductID], [Name], [ProductNumber]
FROM Production.Product
WHERE Name LIKE '%Chain%'
UNION
SELECT [ProductID], [Name], [ProductNumber]
FROM Production.Product
WHERE Name LIKE '%Decal%'
ORDER BY Name;

-- Desafio
SELECT [ProductID], [Name], [Color]
FROM Production.Product
WHERE Name LIKE 'LL'
UNION
SELECT [ProductID], [Name], [Color]
FROM Production.Product
WHERE Color LIKE 'Black';




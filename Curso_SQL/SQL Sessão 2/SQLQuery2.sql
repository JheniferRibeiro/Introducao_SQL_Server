-- AULA INNER JOIN + DESAFIOS
-- INNER JOIN, OUTER JOIN E SELF-JOIN

SELECT C.ClienteId, C.Nome, E.Rua, E.Cidade FROM Cliente C INNER JOIN Endereço E ON E.EnderecoId = C.EnderecoId

--|2| Bruno | Rua Norte | São Paulo|

-- BusinessEntity, FirstName, LastName, EmailAddress
USE AdventureWorks2017;
SELECT TOP 10 * FROM Person.Person
SELECT TOP 10 P.BusinessEntityId, P.FirstName, P.LastName, E.EmailAddress
              From Person.Person P
              INNER JOIN Person.EmailAddress E ON e.BusinessEntityID = p.BusinessEntityID;

SELECT TOP 10 * FROM Person.PhoneNumberType;
SELECT TOP 10 * FROM Person.PersonPhone;

SELECT TOP 10 P.BusinessEntityId, PE.Name, P.PhoneNumberTypeId, P.PhoneNumber 
				FROM Person.PersonPhone P 
				INNER JOIN Person.PhoneNumberType PE ON PE.PhoneNumberTypeID = P.PhoneNumberTypeID;

SELECT TOP 10 * FROM Person.StateProvince;
SELECT TOP 10 * FROM Person.Address;

SELECT TOP 10 P.AddressID, P.City, PE.StateProvinceID, PE.Name
FROM Person.Address P
INNER JOIN Person.StateProvince PE ON PE.StateProvinceID = P.StateProvinceID;





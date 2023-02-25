/*Aprendendo SQL*/

/*Descobrimos como criar uma Database*/
Create database database1

/*Descobrimos como criar uma tabela*/
Create Table tabela1

/*Descobrimos como recuperar uma database, e é ela que vamos utilizar para seguir no treinamento abaixo*/

Use AdventureWorks2017

/*Select from */
Select *from Person.Person
--Assim conseguimos visualizar todas as informações da tabela Person.person--

/*Select from distinct*/
Select * from  distinct Person.Person
--Assim conseguimos visualizar todas as informações distintas da tabela Person.person--

/*Select from Where*/
Select * from person.Person

Select * from Person.Person 
		where LastName = 'Alexander' and FirstName = 'ana'
--Assim conseguimos visualizar as informações que contenham atributos específicos--

/*A empresa precisa saber de todos os produtos que tenham seu peso maior que 500kg e menor que 700*/
Select * from Production.Product 
 where Weight > 500 and Weight < 700

/*A empresa precisa saber de todos empregados que sejam casados e assalariados*/

Select * from HumanResources.Employee 
		where MaritalStatus = 'M' and SalariedFlag > 0

/*A empresa precisa saber o email do peter krebs, para que possam enviar-lhe a cobrança do que ele está devendo*/

Peter Krebs

Select * from Person.Person 
		where FirstName = 'Peter' and LastName = 'Krebs'

/*Descobrimos que as colunos que se relacionam nas tabelas é a BusinessEntityID*/

Select * from Person.EmailAddress 
        where BusinessEntityID = 26

/*Utilizando Join para relacionar o email com os nomes entre as duas tabelas*/

Select p.FirstName, p.LastName, e.EmailAddress 
  from Person.Person as p 
  join Person.EmailAddress as e 
    on p.BusinessEntityID = e.BusinessEntityID


Select p.FirstName, p.LastName, e.EmailAddress 
  from Person.Person as p 
  join Person.EmailAddress as e 
    on p.BusinessEntityID = e.BusinessEntityID 
 where p.LastName = 'Krebs' and P.FirstName = 'Peter'

--Decidi relacionar as tabelas para encontrar um resultado mais dinamico onde eu tivesse seu nome relacionado ao seu e-mail, através do atributo que se relaciona nas duas tabelas, o BusinessEntityID--



/* Utilizando Count para saber a quantidade de itens em uma tabela */

select * from Production.Product

--Selecionando quantos produtos temos na tabela de produtos--

Select Count (*) from Production.Product

--Selecionando quantos tamanhos de produtos temos nos produtos--

Select Count (size) from Production.Product

--Selecionando os tamanhos diferentes nos produtos--

Select Count (DISTINCT size) from Production.Product

--Selecionando os Top Produtos e Ordenando do maior ao menor, ou vice-versa --

select * from Production.Product

select top 4 ProductNumber, Name
      from Production.Product
     ORDER by ProductID asc

	 -- Between para selecionar os valores ENTRE um valor ou outro --

	 Select * from humanresources.employee 
	         where hiredate between '2009/01/01' and '2010/01/01' 
		  Order by hiredate

		  	 Select * from humanresources.employee 
	         where hiredate not between '2009/01/01' and '2010/01/01' 
		  Order by hiredate

		  	-- In nos permite procurar nas colunas valores iguais aos inseridos nos parenteses--

	Select * from person.person
		    Where BusinessEntityID in (2,7,13)

	Select * from person.person
		    Where BusinessEntityID not in (2,7,13)

			-- Like nos permite selecionar valores nas colunas que tenham dentro do seu valor os caracteres inseridos--


	 Select * from person.person 
	         where FirstName like 'ovi%'

	Select * from person.person 
	        where FirstName like '%to'

			Select * from person.person 
	        where FirstName like '%ro_'
			-- o _ nos permite substituir apenas um caracter, já o % mostra todos os resultados antes ou depois do local inserido--

			-- Precisamos encontrar quantos produtos temos na tabela, onde seus valores sejam maiores que 1500--

			select * from Production.Product

			select count (ListPrice) from Production.Product
			Where ListPrice > 1500

			-- Precisamos encontrar todos da tabelas cujo sobrenome comecem com p--

			 Select Count (LastName) 
			  from Person.person
			 where LastName like 'P%'

			 	-- Precisamos encontrar todas as cidades diferentes onde residem nossos clientes--

			 Select * from Person.Address

			  Select Count (distinct city) 
			  from Person.address

			  -- Precisamos encontrar quais as cidades diferentes onde residem nossos clientes--

			   Select distinct city 
			  from Person.address
			
			  -- Quantos produtos vermelhos tem preço entre 500 e 1000---

			  select * from Production.Product

			select count (ProductID)
			from Production.Product 
			Where Color = 'red'
			and ListPrice between 500 and 1000

			-- Quantos produtos cadastrados tem a palavra road no nome---

			select count (*)
			from Production.Product 
			Where name like '%road%'
			
			



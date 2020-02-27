
/********************************************************\
*			The SELECT statement						*
* -Removing Duplicates									*
* -Sorting Results										*
* -Paging Sorted Results								*
* -filtering and using Predicates						*
*														*
\*******************************************************/

USE
	[AdventureWorksLT2014]
GO

--SELECT ALL
	-- Default behavior includes duplicates
SELECT Color
FROM [SalesLT].[Product]

--SELECT DISTINCT
	--Removes Duplicates
SELECT DISTINCT Color --,Size
FROM [SalesLT].[Product]

/*
**		       SORTING Results
**Use Order by to sort results by one more columns
** -Aliases created in SELECT clause are visible to ORDER BY
** -you can order by columns in the source thatare not included in the SELECT clause
**You can specify ASC or DESC (ASC is the default)
*/


--liomiting the results
	--TOP allows you to limit the numbert or percentage or rows returned by the query

	--DISPLAY a listy of product colors
	USE AdventureWorksLT2014
	GO
	SELECT isnull(Color,'None') AS Color
	FROM SalesLT.Product

	--display unique productr colors SORTED BY color
	SELECT DISTINCT ISNULL(Color, 'None')
	FROM SalesLT.Product
	ORDER BY Color

	--DISPLAY A of product color with the word 'None' if the value is null and dash if the size is null sorted by color AND ALIAS(color and size)
	SELECT ISNULL(Color, 'None') Color, ISNULL(Size, '-') AS Size
	FROM SalesLT.Product
	ORDER BY Color

	--Modify the above query and display unique combinations only
	SELECT DISTINCT ISNULL(Color, 'None') Color, ISNULL(Size, '-') AS Size
	FROM SalesLT.Product
	ORDER BY Color

	--DISplay the the top 100 product by list price
	SELECT TOP 100 Name, ListPrice
	FROM SalesLT.Product
	ORDER BY ListPrice DESC

	--alternative of the above query
	SELECT Name, ListPrice
	FROM SalesLT.Product
	ORDER BY ListPrice DESC
	OFFSET 0 ROWS
	FETCH FIRST 100 ROWS ONLY;

	-- you can also use limit 

	--display the fist ten products by product number
	SELECT Name, ProductNumber
	FROM SalesLT.Product
	ORDER BY ProductNumber DESC
	OFFSET 0 ROWS
	FETCH NEXT 10 ROWS ONLY

	--DISPLAY THE NEXT 10 product by their number
	SELECT Name, ProductNumber
	FROM SalesLT.Product
	ORDER BY ProductNumber DESC
	OFFSET 10 ROWS
	FETCH NEXT 10 ROWS ONLY

	--
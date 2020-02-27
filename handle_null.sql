
/*******
		WORKING WITH THE NULL VALUES
				NULL FUNCTIONS

-ISNULL(column/variable, value)
	-returns a value if column or variable is null

-NULLIF(column/variable,value)
	-returns NULL if the column or variable is value

-COALESCE(column/variable1,column/variable2,....)
	-return
*********/

USE [AdventureWorksLT2014]
GO

--ISNULL --null numbers = 0
SELECT Name, ISNULL(TRY_CAST(Size AS int), 0)
FROM [SalesLT].[Product]

--ISNULL --null string = blank string
SELECT Name, ISNULL(Color,'') + ', ' + ISNULL(Size,'') AS ProductDetauils
FROM [SalesLT].[Product]

--NULLIF - set multi color to null
SELECT Name, NULLIF(Color, 'Multi') AS SingleColor
FROM [SalesLT].[Product]

--	COALESCE -find the first none null date
SELECT Name, COALESCE([DiscontinuedDate],[SellEndDate], [SellStartDate]) AS [Last Activity]
FROM [SalesLT].[Product]

--searched case

SELECT Name,
	CASE 
		WHEN [SellEndDate] IS NULL THEN 'on SalE'
		ELSE 'Dicontinued'
	END AS Salestatus
FROM [SalesLT].[Product]

--simple case
SELECT Name,
	CASE Size
		WHEN 'S' THEN 'small'
		WHEN 'M' THEN 'medium'
		WHEN 'L' THEN 'large'
		WHEN 'XL' THEN 'extra large'
		ELSE ISNULL(Size, 'n/a')
	END AS ProductSize

FROM [SalesLT].[Product]
--=====working with data types and=====----
/********Data tyope conversion

*Implicit conversion
	-Compitable compitable data types can be automatically converted

*Explicit Conversion
	-Requires an Explicit conversion function
		~CAST/TRY_CAST
		~CONVERT/TRY_CONVERT
		~PARSE/TRY_PARSE
		~STR
******/

USE [AdventureWorksLT2014]
GO

--CAST

SELECT Name, CAST(ProductID AS varchar(5))+ ': ' + Name AS [Product ID]
FROM [SalesLT].[Product]

--CONVERT
SELECT Name, CONVERT(varchar(5),ProductID) + ': ' + Name AS [Product ID]
FROM [SalesLT].[Product]

--convert dates
SELECT[SellStartDate], 
	CONVERT(nvarchar(30), [SellStartDate]) AS [Converted Date],
	CONVERT(nvarchar(30), [SellStartDate]) AS IS08602FormatDate
FROM [SalesLT].[Product]


--TRY_CAST
SELECT Name, TRY_CAST(Size AS int) [Numeric Size]
FROM [SalesLT].[Product]
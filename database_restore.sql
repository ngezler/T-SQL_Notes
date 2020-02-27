USE [master]
GO

RESTORE DATABASE AdventureWorksLT2016
FROM disk= 'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\Backup\AdventureWorksLT2016.bak'
WITH MOVE 'AdventureWorksLT2016_data'
TO 'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\AdventureWorksLT2016.mdf',
MOVE 'AdventureWorksLT2012_Log' 
TO 'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\AdventureWorksLT2016.ldf'
,REPLACE


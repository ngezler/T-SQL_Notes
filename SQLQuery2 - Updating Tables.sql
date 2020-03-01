/* Create a table */
CREATE TABLE lang_temp (alpha2 varchar(2),
	English varchar(50));

/* Populate the newly created table using the csv file */
BULK INSERT lang_temp 
FROM 'C:\Users\bonga\Downloads\iso_639_1-a-76-a-1394\iso_639_1-a-76.csv'
WITH(
	FIRSTROW = 2, 
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '\n'
	)

/* Update the table with the new information */

UPDATE Languages
SET Languages.language_name = lang_temp.English
FROM (Languages
INNER JOIN lang_temp
ON Languages.iso_639_1 = lang_temp.alpha2)

/* Look at he Languages table */

SELECT *
FROM Languages

/* Drop the temporary table */

DROP TABLE lang_temp





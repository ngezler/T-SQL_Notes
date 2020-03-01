/* INNER JOIN */
/* The intersection of the two tables, giving records
that have matching values in both tables */

SELECT *
FROM Casts C
INNER JOIN Actors A
ON C.actor_id = A.actor_id

/* LEFT JOIN */
/* Returns all records from the left table and matched
records from the right table. 
If no match, result from RIGHT table is NULL. */

SELECT *
FROM Casts C
LEFT JOIN Actors A
ON C.actor_id = A.actor_id

/* RIGHT JOIN */
/* Returns all records from the right table and matched
records from the left table. 
If no match, result from LEFT table is NULL. */

SELECT *
FROM Casts C
RIGHT JOIN Actors A
ON C.actor_id = A.actor_id

/* RIGHT JOIN */
/* Returns all rows from at least one of the tables or views 
in the FROM clause, as long as those rows meet the WHERE or 
HAVING search conditions. 
Match tables on keys present in one table. 
If no match, it returns a blank. */

SELECT *
FROM Casts C
FULL OUTER JOIN Actors A
ON C.actor_id = A.actor_id


/* Example using Movies, Casts and Actors table */

/* Finding a character and  actor of a movie */

SELECT *
FROM Casts C
LEFT JOIN Actors A
ON C.actor_id = A.actor_id

/* Now, we want to find the movie where the actor
or cast is in */

SELECT *
FROM Casts C
LEFT JOIN Actors A
ON C.actor_id = A.actor_id
LEFT JOIN Movies M
ON C.movie_id = M.movie_id

/* Unlinked tables, but possibly share similar 
column details. */


/* Just the Oscars and Movie table, such that we can 
look at the movies nominated for Best Picture to see 
the most recent nominee. */

SELECT *
FROM Oscars O
LEFT JOIN Movies M
ON O.name = M.title
WHERE O.award = 'Best Picture'
ORDER BY O.year DESC

-- GROUP 5
-- Creating a new Database called Challenge
-- CHALLENGE 1 : Box office hits database
/* creating a table movies*/
USE challenges;
CREATE TABLE movies (id INTEGER PRIMARY KEY, name TEXT, release_year INTEGER);
INSERT INTO movies VALUES (1, "Avatar", 2009);
INSERT INTO movies VALUES (2, "Titanic", 1997);
INSERT INTO movies VALUES (3, "Star Wars: Episode IV - A New Hope", 1977);
INSERT INTO movies VALUES (4, "Shrek 2", 2004);
INSERT INTO movies VALUES (5, "The Lion King", 1994);
INSERT INTO movies VALUES (6, "Disneys Up", 2009);

-- selecting all movies
SELECT* FROM movies;

-- retrieving movies that were released in the year 2000 or later 
SELECT* FROM movies
WHERE release_year >= 2000;

-- Sorting the earlier movies
SELECT* FROM movies
WHERE release_year >= 2000
ORDER BY release_year;


-- CHALLENGE 2 : TODO list database stats
-- creating To do List Table

CREATE TABLE todo_list (id INTEGER PRIMARY KEY, item TEXT, minutes INTEGER);
INSERT INTO todo_list VALUES (1, "Wash the dishes", 15);
INSERT INTO todo_list VALUES (2, "vacuuming", 20);
INSERT INTO todo_list VALUES (3, "Learn some stuff on BA", 30);
INSERT INTO todo_list VALUES (4, "cooking", 55);

SELECT SUM(minutes) AS Total_minutes
FROM todo_list;





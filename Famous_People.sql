/* creating a database called Famous_People */
CREATE DATABASE Famous_People;

USE Famous_People;

/* creating a table called movie_stars with artist personal information such as name, 
birthdate, sex, country of birth and marital status as columns */
CREATE TABLE movie_stars (id INTEGER PRIMARY KEY AUTO_INCREMENT, name TEXT, birthdate TEXT, sex TEXT, country text,
marital_status TEXT);
INSERT INTO movie_stars (id, name, birthdate, sex, country, marital_status) 
       VALUES (1, "Chris Hemsworth", "11-08-1983", "Male", "Australia", "Married");
INSERT INTO movie_stars (id, name, birthdate, sex, country, marital_status) 
      VALUES (2, "Sylvester Stallone", "06-07-1946", "Male", "USA", "Married");
INSERT INTO movie_stars (id, name, birthdate, sex, country, marital_status) 
      VALUES (3, "Angelina Jolie", "04-06-1975", "Female", "USA", "Married");
INSERT INTO movie_stars (id, name, birthdate, sex, country, marital_status) 
      VALUES (4, "Samuel Leroy Jackson", "21-12-1948", "Male", "USA", "Married");
INSERT INTO movie_stars (id, name, birthdate, sex, country, marital_status) 
      VALUES (5, "Jackie Chan Lee", "07-07-1954", "Male", "Hong Kong", "Married");
INSERT INTO movie_stars (id, name, birthdate, sex, country, marital_status) 
      VALUES (6, "Viola Davis", "11-08-1965", "Female", "USA", "Married");
INSERT INTO movie_stars (id, name, birthdate, sex, country, marital_status) 
      VALUES (7, "Lashana Lynch", "27-11-1987", "Female", "UK", "Married");
INSERT INTO movie_stars (id, name, birthdate, sex, country, marital_status) 
      VALUES (8, "Mike Colter", "26-08-1976", "Male", "USA", "Married");
INSERT INTO movie_stars (id, name, birthdate, sex, country, marital_status) 
      VALUES (9, "Denzel Washington", "28-12-1954", "Male", "USA", "Married");
INSERT INTO movie_stars (id, name, birthdate, sex, country, marital_status) 
      VALUES (10, "Elizabeth Olsen", "16-02-1989", "Female", "USA", "Married");
      
/* creating a table called renowed_movies with movie title, released year and genre as the columns */
CREATE TABLE renowed_movies (id INTEGER PRIMARY KEY AUTO_INCREMENT, title TEXT, year INTEGER, genre TEXT);
INSERT INTO renowed_movies (title, year, genre) VALUES ("Thor", 2011, "Superhero");
INSERT INTO renowed_movies (title, year, genre) VALUES ("Escape Plan", 2013, "Action thriller");
INSERT INTO renowed_movies (title, year, genre) VALUES ("Maleficent", 2014, "Drama");
INSERT INTO renowed_movies (title, year, genre) VALUES ("The Hitman's Bodyguard", 2017, "Action");
INSERT INTO renowed_movies (title, year, genre) VALUES ("Rush hour", 1998, "Action");
INSERT INTO renowed_movies (title, year, genre) VALUES ("The Woman King", 2022, "Drama");
INSERT INTO renowed_movies (title, year, genre) VALUES ("The Woman King", 2022, "Drama");
INSERT INTO renowed_movies (title, year, genre) VALUES ("Evil", 2019, "Thriller");
INSERT INTO renowed_movies (title, year, genre) VALUES ("The Equalizer", 2014, "Action");
INSERT INTO renowed_movies (title, year, genre) VALUES ("Godzilla", 2014, "Sci-fi");

/* creating a table called production with columns such as rating, duration and movie_director */
CREATE TABLE production (id INTEGER PRIMARY KEY AUTO_INCREMENT, production_id INTEGER, rating FLOAT, duration INTEGER, movie_director TEXT);
INSERT INTO production (production_id, rating, duration, movie_director) VALUES (11, 4.1, 114, "Kenneth Branagh");
INSERT INTO production (production_id, rating, duration, movie_director) VALUES (10, 4.5, 115, "Mikael Håfström");
INSERT INTO production (production_id, rating, duration, movie_director) VALUES (8, 4.6, 94, "Robert Stromberg");
INSERT INTO production (production_id, rating, duration, movie_director) VALUES (7, 4.5, 118, "Patrick Hughes");
INSERT INTO production (production_id, rating, duration, movie_director) VALUES (6, 4.8, 98, "Brett Ratner");
INSERT INTO production (production_id, rating, duration, movie_director) VALUES (5, 4.5, 135, "Gina Prince-Bythewood");
INSERT INTO production (production_id, rating, duration, movie_director) VALUES (4, 4.5, 135, "Gina Prince-Bythewood");
INSERT INTO production (production_id, rating, duration, movie_director) VALUES (9, 4.8, 177, "David Buckley");
INSERT INTO production (production_id, rating, duration, movie_director) VALUES (3, 4.6, 109, "Antoine Fuqua");
INSERT INTO production (production_id, rating, duration, movie_director) VALUES (1, 4.2, 123, "Gareth Edwards");

/* dispalying the tables */
SELECT * FROM movie_stars;
SELECT * FROM renowed_movies;
SELECT * FROM production;

/* querying from the tables */
SELECT * FROM movie_stars
JOIN renowed_movies
JOIN production;

/* Using JOIN to display the name of the movie stars and what movie they starred in */
SELECT movie_stars.name, renowed_movies.title
FROM movie_stars
JOIN renowed_movies ON movie_stars.id = renowed_movies.id;

/* showing movie stars, movies they are starred in and its rating */
SELECT movie_stars.name, renowed_movies.title, production.rating
FROM movie_stars
JOIN renowed_movies ON movie_stars.id = renowed_movies.id
JOIN production ON movie_stars.id = production.id;

/* showing results of movie stars, their movies and  movie directors */
SELECT movie_stars.name, renowed_movies.title, production.movie_director
FROM movie_stars
JOIN renowed_movies ON movie_stars.id = renowed_movies.id
JOIN production ON movie_stars.id = production.id;

/* displaying movie stars, their marital status and the genre of films they like to cast */
SELECT movie_stars.name, movie_stars.marital_status, renowed_movies.genre
FROM movie_stars
JOIN renowed_movies ON movie_stars.id = renowed_movies.id;

/* displaying movie stars, movie titles and year in which they were released */
SELECT movie_stars.name, renowed_movies.title, renowed_movies.year
FROM movie_stars
JOIN renowed_movies ON movie_stars.id = renowed_movies.id;

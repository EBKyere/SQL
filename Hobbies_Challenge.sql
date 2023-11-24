/*GROUP 3 MEMBERS
 Phoebe Adjei-Frimpong
 Martha Etornam Amedzrator
 Joseph Tugah
 Donna Botchway
 Divine Adzove 
 Ernestina Boatemaa Kyere
 */
 
/*Challenge: Bobby's Hobbies
A database of people and hobbies is created, and each row in hobbies is related to a
row in persons via the person_id.*/

/*create table for persons*/
CREATE TABLE persons (id INTEGER PRIMARY KEY AUTO_INCREMENT, name TEXT, age
INTEGER);

/*add records*/
INSERT INTO persons (name, age) VALUES ("Bobby McBobbyFace", 12);
INSERT INTO persons (name, age) VALUES ("Lucy BoBucie", 25);
INSERT INTO persons (name, age) VALUES ("Banana FoFanna", 14);
INSERT INTO persons (name, age) VALUES ("Shish Kabob", 20);
INSERT INTO persons (name, age) VALUES ("Fluffy Sparkles", 8);
INSERT INTO persons (name, age) VALUES ("Jerry Jay", 9);

/*create table for hobbies*/
CREATE table hobbies (id INTEGER PRIMARY KEY AUTO_INCREMENT, person_id INTEGER,
 name TEXT);
 
 /*add records*/
INSERT INTO hobbies (person_id, name) VALUES (1, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (1, "coding");
INSERT INTO hobbies (person_id, name) VALUES (2, "dancing");
INSERT INTO hobbies (person_id, name) VALUES (2, "coding");
INSERT INTO hobbies (person_id, name) VALUES (3, "skating");
INSERT INTO hobbies (person_id, name) VALUES (3, "rowing");
INSERT INTO hobbies (person_id, name) VALUES (3, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (4, "coding");
INSERT INTO hobbies (person_id, name) VALUES (4, "dilly-dallying");
INSERT INTO hobbies (person_id, name) VALUES (4, "meowing");
INSERT INTO hobbies (person_id, name) VALUES (5, "hunting");

/*display records*/
SELECT * FROM persons;
SELECT * FROM hobbies;

/*add more records*/
INSERT INTO persons (name, age) VALUES ("Merry May", 29);
INSERT INTO hobbies (person_id, name) VALUES (7, "coding");

/*Join the tables to display each person's name next to their hobby*/
SELECT persons.name, hobbies.name AS hobbies FROM persons
	JOIN hobbies 
		ON persons.id = hobbies.person_id;
        
/*Display only records of Bobby McBobbyFace*/
SELECT persons.name, hobbies.name AS hobbies FROM persons
      JOIN hobbies
		ON persons.id = hobbies.person_id
			WHERE persons.name = "Bobby McBobbyFace";
        
        
        
        /*Challenge: Customer's orders
 A database for customers and their orders is created. Not all of the customers have
made orders, however. We have to list the name and email of every
customer followed by the item and price of orders they've made. As well as 
the total amount of money they've spent on orders.*/

/*Create table for customers*/
CREATE TABLE customers (id INTEGER PRIMARY KEY AUTO_INCREMENT, name TEXT, email
TEXT);

/*add records*/
INSERT INTO customers (name, email) VALUES ("Doctor Who", "doctorwho@timelords.com");
INSERT INTO customers (name, email) VALUES ("Harry Potter", "harry@potter.com");
INSERT INTO customers (name, email) VALUES ("Captain Awesome", "captain@awesome.com");

/*Create table for orders*/
CREATE TABLE orders (id INTEGER PRIMARY KEY AUTO_INCREMENT, customer_id INTEGER, item
TEXT, price REAL);

/*add records*/
INSERT INTO orders (customer_id, item, price)
 VALUES (1, "Sonic Screwdriver", 1000.00);
INSERT INTO orders (customer_id, item, price)
 VALUES (2, "High Quality Broomstick", 40.00);
INSERT INTO orders (customer_id, item, price)
 VALUES (1, "TARDIS", 1000000.00);
 
 /*display records*/
 SELECT * FROM customers;
 SELECT * FROM orders;
 
 /*Displaying all customers and order details- (with or without orders)*/
SELECT customers.name, customers.email, orders.item, orders.price FROM customers 
	LEFT OUTER JOIN orders 
		ON customers.id = orders.customer_id;
        
/*Show each customer, with their name, email, and total amount of money 
they've spent on orders.Sort by most spent to the least spent*/
SELECT customers.name, customers.email, SUM(orders.price) AS "total_price" 
 FROM customers 
	LEFT OUTER JOIN orders 
		ON customers.id = orders.customer_id
			GROUP BY customers.name, customers.email
				ORDER BY total_price DESC;
        

/*Challenge: Sequels in SQL
A table is created with all the 'Harry Potter' movies, with a sequel_id column that
matches the id of the sequel for each movie. We are to show the title of each
movie next to its sequel's title (or NULL if it doesn't have a sequel).*/

/*Create table for movies*/
CREATE TABLE moviess (id INTEGER PRIMARY KEY AUTO_INCREMENT, title TEXT, released
INTEGER, sequel_id INTEGER);

/*add records*/
INSERT INTO moviess VALUES (1, "Harry Potter and the Philosopher's Stone", 2001, 2);
INSERT INTO moviess VALUES (2, "Harry Potter and the Chamber of Secrets", 2002, 3);
INSERT INTO moviess VALUES (3, "Harry Potter and the Prisoner of Azkaban", 2004, 4);
INSERT INTO moviess VALUES (4, "Harry Potter and the Goblet of Fire", 2005, 5);
INSERT INTO moviess VALUES (5, "Harry Potter and the Order of the Phoenix ", 2007, 6);
INSERT INTO moviess VALUES (6, "Harry Potter and the Half-Blood Prince", 2009, 7);
INSERT INTO moviess VALUES (7, "Harry Potter and the Deathly Hallows – Part 1", 2010, 8);
INSERT INTO moviess VALUES (8, "Harry Potter and the Deathly Hallows – Part 2", 2011, NULL);

SELECT * FROM moviess;
/*Issue a  SELECT that will show the title of each moviess next to its 
sequel's title (or NULL if it doesn't have a sequel).*/

SELECT moviess.title AS "movie_title", sequel.title AS "sequel_title"
FROM moviess
LEFT OUTER JOIN moviess sequel
ON moviess.sequel_id = sequel.id;
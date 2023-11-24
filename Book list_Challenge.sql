 /* creating a book database named Book_list*/
CREATE DATABASE Book_list;

/* telling the engine to use a particular schema*/
USE Book_list;

/* creating a table called library*/
CREATE TABLE library (id INTEGER PRIMARY KEY, name TEXT, rate INTEGER);

/* inserting data into the library table*/
INSERT INTO library VALUES (1, "Attitude is everything", 5), (2, "Rich dad Poor dad", 4), (3, "The purpose-driven life", 5), (4, "Waiting and dating", 4), (5, "The power of your mind", 4), (6, "Love and respect", 5), (7, "How successful people think", 4), (8, "The 7 habits of highly effective people", 5), (9, "How to enjoy your marriage", 4), (10, "Called to lead", 3), (11, "Drop that YAM", 4), (12, "Celebrating marriage", 3), (13, "I kissed dating goodbye", 3), (14, "Understanding the anointing", 4), (15, "Colliding with the prophetic mantle", 3);
INSERT INTO library VALUES (16, "Think like a man Act like a lady", 3), (17, "The principles and benefits of change", 5), (18, "Healing the broken hearted", 5), (19, "School of the seers", 5), (20, "Tradition and change in Ghana", 4), (21, "Regional development in Ghana", 4), (22, "Smart money woman", 5), (23, "Things fall apart", 5), (24, "Animal farm", 4), (25, "Suicide", 4), (26, "Understanding the purpose of men", 4), (27, "Angels and demons", 2), (28, "If I be a man of God", 3), (29, "Maximizing your potential", 5), (30, "The joys of motherhood", 4);

/* selecting data from the table*/
SELECT * FROM library;
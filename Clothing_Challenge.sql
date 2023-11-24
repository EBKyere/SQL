/*GROUP 3 MEMBERS
 Phoebe Adjei-Frimpong
 Martha Etornam Amedzrator
 Donna Botchway
 Divine Adzove 
 Ernestina Boatemaa Kyere
 Joseph Tugah*/

/*Creating database*/
CREATE DATABASE store;

/*Create a table*/
CREATE TABLE unisex_couture (id INTEGER PRIMARY KEY AUTO_INCREMENT, clothing_type TEXT, brand TEXT, size TEXT, 
colour TEXT, material_type TEXT, unit_price FLOAT);

/*Inserting values*/
INSERT INTO unisex_couture (clothing_type, brand, size, colour, material_type, unit_price) 
VALUES ("Trousers", "Zara", "L", "Ash", "linen", 1200),
("T_shirt", "GUCCI", "M", "White", "cotton", 500),
("Sweater", "levi", "XL", "Blue", "wool", 300),
("Suit", "Armani", "L", "Black", "tweed", 5500),
("Blouse", "GUCCI", "M", "Gray", "linen", 100),
("T-shirt", "Nike", "M", "Black", "Cotton", 24.99),
("Jeans", "Levi's", "XL", "Blue", "Denim", 49.99),
("Dress", "Calvin Klein", "S", "Red", "Silk", 89.99),
("Sweater", "Adidas", "L", "Gray", "Wool", 39.99),
("Shorts", "H&M", "S", "Green", "Cotton", 19.99),
("Blouse", "Zara", "M", "White", "Polyester", 29.99),
("Jacket", "The North Face", "L", "Black", "Nylon", 79.99),
("Skirt", "Mango", "XS", "Blue", "Cotton", 34.99),
("Polo Shirt", "Ralph Lauren", "L", "Navy", "Cotton", 59.99),
("Sweatpants", "Under Armour", "XL", "Gray", "Polyester", 44.99),
("Blazer", "Burberry", "M", "Beige", "Wool", 199.99),
("Hoodie", "Gap", "S", "Navy", "Cotton", 49.99),

("Tank Top", "Forever 21", "XS", "Pink", "Spandex", 14.99),
("Chinos", "Dockers", "L", "Khaki", "Cotton", 39.99),
("Coat", "Burberry", "L", "Black", "Cashmere", 299.99),
("Socks", "Hanes", "One Size", "White", "Cotton", 9.99),
("Sunglasses", "Ray-Ban", "One Size", "Black", "Plastic", 99.99),
("Hat", "New Era", "One Size", "Red", "Cotton", 19.99),
("Shoes", "Nike", "10", "Black", "Leather", 79.99),
("Belt", "Gucci", "One Size", "Brown", "Leather", 149.99),
("Swimsuit", "Speedo", "S", "Blue", "Polyester", 34.99),
("Sneakers", "Converse", "9.5", "Red", "Canvas", 54.99),
 ("Gloves", "The North Face", "M", "Black", "Fleece", 19.99),
    ("Scarf", "Burberry", "One Size", "Plaid", "Cashmere", 129.99),
    ("Trousers", "Zara", "30x32", "Gray", "Polyester", 39.99),
    ("Beanie", "Adidas", "One Size", "Black", "Acrylic", 14.99),
    ("Duffle Bag", "Louis Vuitton", "One Size", "Brown", "Canvas", 299.99),
    ("Umbrella", "Totes", "One Size", "Black", "Polyester", 19.99),
    ("Gym Bag", "Under Armour", "One Size", "Blue", "Nylon", 29.99),
    ("Wristwatch", "Rolex", "One Size", "Gold", "Gold", 999.99);

/*Displaying items in order of price*/
 SELECT * FROM unisex_couture
 ORDER BY unit_price;
 
/*Displaying items in order of price (DESCENDING)*/
 SELECT * FROM unisex_couture
 ORDER BY unit_price DESC LIMIT 10;
 
 /*Average price for each clothing type*/
SELECT clothing_type, AVG(unit_price) AS average_price
FROM unisex_couture
GROUP BY clothing_type
ORDER BY average_price DESC;

/*Total colour count (Count per colour)*/
SELECT colour, COUNT(*) AS colour_count
FROM unisex_couture
GROUP BY colour
ORDER BY colour_count DESC;

/*Total material count (Count per material)*/
SELECT material_type, COUNT(*) AS material_count
FROM unisex_couture
GROUP BY material_type
ORDER BY material_count DESC;
 
 /*Minimum and Maximum price*/
 SELECT MIN(unit_price) AS Unit_Price FROM unisex_couture;
 SELECT MAX(unit_price) AS Unit_Price FROM unisex_couture;
 
 /*Total number of items in the store*/
 SELECT COUNT(*) AS item_count FROM unisex_couture;
 
 /*Displaying all record*/
SELECT * FROM unisex_couture;
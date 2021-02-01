-- Use Database
USE week1;

-- Create Table within Database with 4 columns. ID will update automatically
CREATE TABLE cars (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	make VARCHAR (20),
    model VARCHAR (20),
    year DATE
);

-- Insert Data into table (1st Entry)
INSERT INTO cars (make, model, year)
VALUES 
("Tesla", "Model S", "2012-06-22"), 
("Chevrolet", "Camaro", "2004-03-11"), 
("Dodge", "Charger", "2008-11-11");

-- Insert Data into table (2nd Entry)
INSERT INTO cars (make, model, year)
VALUES 
("Tesla", "Model X", "2015-06-22"), 
("Tesla", "Model Y", "2020-03-13"), 
("Dodge", "Challenger", "1969-11-11");

-- Add two new columns for prices and colors
ALTER TABLE cars
ADD price INT,
ADD color VARCHAR(50);

-- Update for all cars with price and color values
UPDATE cars 
SET price = 69420, color = "Red"
WHERE id = 1;

UPDATE cars 
SET price = 25000, color = "Blue"
WHERE id = 2;

UPDATE cars 
SET price = 29995, color = "White"
WHERE id = 3;

UPDATE cars 
SET price = 79990, color = "Silver"
WHERE id = 4;

UPDATE cars 
SET price = 49990, color = "Space Grey"
WHERE id = 5;

UPDATE cars 
SET price = 28295, color = "Orange"
WHERE id = 6;


-- JOIN make and model under one column name
SELECT CONCAT(make, " ", model) AS make_and_model
FROM cars;

-- Display all car makes as well as the number of times these car models repeat
SELECT make AS Make, COUNT(make) AS Matches 
FROM cars 
GROUP BY make;


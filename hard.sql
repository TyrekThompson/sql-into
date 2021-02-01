USE week1;
CREATE TABLE top_movies (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(220),
release_date DATE,
rating DECIMAL (2,1) 
);
INSERT INTO top_movies (title, release_date, rating) 
values
("The Godfather","1972-03-24",9.2),
("The Karate Kid","1984-06-22",7.3),
(" Jumanji: Level One","2021-01-20",5.0),
("Joker","2019-10-04",8.5),
("Goodfellas","1990-09-21",8.7),
("Forrest Gump","1994-07-06",8.8),
("Emma","2020-03-06",9.2),
(" Willy's Wonderland","2021-02-12",8.0),
(" Harry Potter and the Sorcerer's Stone ","2001-03-16",7.6),
(" The Dissident","2020-01-08",8.1);

ALTER TABLE top_movies
ADD first_name VARCHAR (220), 
ADD last_name VARCHAR (220);
UPDATE top_movies SET first_name = "Francis", last_name = "Coppola"
 WHERE id =1; 
 UPDATE top_movies SET first_name = "John", last_name = "Avildsen"
 WHERE id =2; 
 UPDATE top_movies SET first_name = "Joe", last_name = "Johnston"
 WHERE id =3; 
 UPDATE top_movies SET first_name = "Todd", last_name = "Phillips"
 WHERE id =4; 
 UPDATE top_movies SET first_name = "Martin", last_name = "Scorses"
 WHERE id =5; 

UPDATE top_movies SET first_name = "Robert", last_name = "Zemeckis"
 WHERE id =6; 
 UPDATE top_movies SET first_name = "Autumn", last_name = "Wilde"
 WHERE id =7; 
 UPDATE top_movies SET first_name = "Kevin", last_name = "Lewis"
 WHERE id =8; 
 UPDATE top_movies SET first_name = "David", last_name = "Yates"
 WHERE id =9; 
 UPDATE top_movies SET first_name = "Bryan", last_name = "Fogel"
 WHERE id =10; 

-- Concat first name and last name to create full name
SELECT CONCAT(first_name, " ", last_name) AS full_name FROM top_movies;

-- Ordering by last name alphabetically
SELECT * FROM top_movies
ORDER BY last_name;

-- Deletes movies where the last name is between R-Z alphabetically
DELETE FROM top_movies
WHERE last_name BETWEEN "R" AND "Z";

-- Order by last name then display the first 3 entries
SELECT * FROM top_movies
ORDER BY last_name
LIMIT 3;
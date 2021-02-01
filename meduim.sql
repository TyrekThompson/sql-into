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
(" Harry Potter and the Sorcerer's Stone ","2001-03-16",7.6);
SELECT * FROM top_movies 
WHERE title LIKE "%s%"
ORDER BY release_date DESC;

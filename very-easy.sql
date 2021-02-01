 USE week1;
CREATE TABLE cars(
 make VARCHAR(20),
 model VARCHAR(20),
 YEAR DATE
 );
 INSERT INTO cars (make, model, year)
 VALUES ("dodge","charger", "2018-03-22"),("dodge", "challenger", "2020-05-05");
 SELECT * FROM cars;
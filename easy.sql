-- Use Database
USE week1;

-- Create Table
CREATE TABLE books (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR (100),
    publish_date DATE,
    author_firstName VARCHAR (20),
    author_lastName VARCHAR (20)
);

-- Insert Data into table
INSERT INTO books (title, publish_date, author_firstName, author_lastName)
VALUES ("Harry Potter and the Chamber of Secrets", "2018-07-02", "J.K", "Rowling"), ("Rich Dad Poor Dad", "1995-04-01", "Robert", "Kiyosaki");


-- Deletes Rich Dad Poor Dad as it's the oldest book by sorting the table then removing one item
DELETE FROM books
ORDER BY publish_date
LIMIT 1;

-- Returns count for the number of books entered by the title
SELECT COUNT(*) AS Sum
FROM books;

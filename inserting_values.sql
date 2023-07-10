INSERT INTO cats (name, age)
VALUES ('Jemimah',1),
       ("Turkey",3),
       ('Veronica',5),
       ("Tubs",2);


CREATE TABLE people (
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    age INTEGER
);


--ADD NOT NULL CONSTRAINT TO AN EXISTING TABLE COLUMN
ALTER TABLE people
MODIFY last_name BIT NOT NULL;
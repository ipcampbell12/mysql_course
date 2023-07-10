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


--ADD NOT NULL CONSTRAINT TO AN EXISTING TABLE COLUMN, or change column data type
ALTER TABLE people
MODIFY last_name NOT NULL;

ALTER TABLE people
MODIFY first_name VARCHAR(20) NOT NULL;

ALTER TABLE people
MODIFY last_name VARCHAR(20) NOT NULL;

ALTER TABLE people
MODIFY age INTEGER NOT NULL;


INSERT INTO people (first_name,last_name, age)
VALUES ('Tina','Belcher',13);

INSERT INTO people (first_name, last_name, age)
VALUES ('Bob','Belcher',20);


INSERT INTO people (first_name, last_name, age)
VALUES ('Linda','Belcher',45),
	   ('Phillip','Frond',38),
	   ('Calvin','Fischoeder',70);

DROP TABLE people;
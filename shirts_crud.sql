--create and use the shirts database
CREATE DATABASE shirts_db;

SHOW DATABASES;

USE shirts_db;

SELECT DATABASE();


--create the shirts table and describe it
CREATE TABLE shirts (
	shirt_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    article VARCHAR(50),
    color VARCHAR(40),
    shirt_size CHAR(10),
    last_worn DATE
);

DESCRIBE shirts;


--make some adjustments to the table constraints
ALTER TABLE shirts
MODIFY article VARCHAR(50) NOT NULL;

ALTER TABLE shirts
MODIFY color VARCHAR(50) NOT NULL;

ALTER TABLE shirts
MODIFY shirt_size CHAR(10) NOT NULL;

--change a data type
ALTER TABLE shirts
MODIFY last_worn INTEGER;

--add some data and verify it was added
INSERT INTO shirts (article,color,shirt_size,last_worn)
VALUES  ('t-shirt', 'white', 'S', 10),
        ('t-shirt', 'green', 'S', 200),
        ('polo shirt', 'black', 'M', 10),
        ('tank top', 'blue', 'S', 50),
        ('t-shirt', 'pink', 'S', 0),
        ('polo shirt', 'red', 'M', 5),
        ('tank top', 'white', 'S', 200),
        ('tank top', 'blue', 'M', 15);

SELECT * FROM shirts;
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

--add a puprle polo shirt and verify it was added
INSERT INTO shirts (article,color,shirt_size,last_worn)
VALUES ('polo shirt', 'purple', 'M', 50);

SELECT * FROM shirts;


--select article and color from shirts
SELECT article,color FROM shirts;

--select all medium shirts
SELECT article,color,shirt_size,last_worn FROM shirts
WHERE shirt_size='M';


--increase the size to L for all polo shirts
SELECT * FROM shirts
WHERE article='polo shirt';

UPDATE shirts SET shirt_size = 'L'
WHERE article = 'polo shirt';

--update last worn if last worn is 15
SELECT * FROM shirts
WHERE last_worn=15;

UPDATE shirts SET last_worn = 0
WHERE last_worn = 15;


--change white to off white
SELECT * FROM shirts
WHERE color='white';

UPDATE shirts SET shirt_size = 'XS', color='off white'
WHERE color='white';

SELECT * FROM shirts;

--delete all shirts that were last worn 200 days ago
SELECT * FROM shirts
WHERE last_worn=200;

DELETE FROM shirts WHERE last_worn =200;

--delete all the tank tops 
SELECT * FROM shirts
WHERE article='tank top';

DELETE FROM shirts WHERE article ='tank top';

--delete all the shirts
DELETE FROM shirts;

SELECT * FROM shirts;
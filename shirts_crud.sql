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
CREATE DATABASE pet_shop;

USE pet_shop; 

SELECT DATABASE();


CREATE TABLE cats (
    name VARCHAR(100),
    age INT
);

CREATE TABLE dogs (
    name VARCHAR(100),
    breed VARCHAR(50),
    age INTEGER
);

--utility commands
SHOW TABLES;

SHOW COLUMNS FROM <table_name>;

DESC <table_name> (or DESCRIBE)


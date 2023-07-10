CREATE TABLE cats (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    breed VARCHAR(100) NOT NULL,
    age INTEGER
);

--select only names

SELECT name FROM cats;

SELECT age FROM cats;

SELECT name,age FROM cats;

SELECT name,breed FROM cats;
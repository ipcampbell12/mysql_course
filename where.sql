
SELECT * FROM cats
WHERE age >= 9;

SELECT name,age FROM cats
WHERE age >= 9;


--dont' have to use column in select even if it is in where
SELECT name FROM cats
WHERE age >= 9;


--WHERE is executed first 

--cant be case insensitive ('Egg' is the actual name)
SELECT * FROM cats
WHERE name = 'egg';


SELECT id FROM cats;

SELECT name, breed FROM cats;


--actual breed name is 'Tabby' it's case inesensitive
--write the sql that selects the tabby cats
SELECT name, age FROM cats
WHERE breed = 'tabby';

SELECT id, age FROM cats
WHERE id=age;
--smiliar to update, if you don't include a WHERE clause you will delete every row from a table
--wil result in an empty table, but table will still exist


--good to run SELECT first
DELETE FROM cats WHERE name = 'Egg';


--delete all 4 year old cats
SELECT * FROM cats
WHERE age=4;

DELETE FROM cats WHERE age=4;

--delete all cast where age is same as id
SELECT * FROM cats 
WHERE age=id;

DELETE FROM cats WHERE age=id; 

--delete all the cats

DELETE FROM cats;
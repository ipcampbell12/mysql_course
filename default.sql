ALTER TABLE cats
MODIFY name VARCHAR(255) DEFAULT "Jigga what?";

INSERT INTO cats (age)
VALUES (3);

SELECT * FROM cats;

--If you have a default value set, you don't need that column when inserting values
--If there are default values for each column, you could insert empty data int your table and it would still work



ALTER TABLE cats
MODIFY age INTEGER DEFAULT 100;


INSERT INTO cats ()
VALUES();


--even if a column has a deafult, you can still leave not null constraint because it would be possible to set value to null manually without constraint
--default values won't protect against not null values
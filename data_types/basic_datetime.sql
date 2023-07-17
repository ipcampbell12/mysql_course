-- DATE 'YYYY-MM-DD' is standard format (date but no time)
-- good for birthdate, for calendar app, events
-- TIME (time but no date), can be time of day or interval of time
-- 'HH:MM:SS' is standard format
-- DATETIME standard format = 'YYYY-MM-DD HH:MM:SS' - date and time separated by a space
-- when something was changed, specific event, when a user signed up for an account
CREATE TABLE people (
     name VARCHAR(50),
     birthdate DATE,
     birthtime TIME, 
     birthdt DATETIME
);

DESCRIBE people;

-- wouldn't usually enter date info this day, usually would come from somewhere else

INSERT INTO people (name, birthdate, birthtime, birthdt) 
VALUES ('Elton','1995-02-23','23:45:22','1995-02-23 23:45:22');

INSERT INTO people (name, birthdate, birthtime, birthdt) 
VALUES ('Jim Bob','1993-02-23','21:45:22','1993-02-23 21:45:22');

INSERT INTO people (name, birthdate, birthtime, birthdt) 
VALUES ('Beatrice','1991-03-23','20:42:22','1991-03-23 20:42:22');

-- don't need leading 0 for single digit values
INSERT INTO people (name, birthdate, birthtime, birthdt) 
VALUES ('Fecunda','1999-04-23','9:15:22','1999-04-23 09:15:22');


SELECT * FROM people;
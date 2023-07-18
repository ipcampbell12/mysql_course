-- current_date, current_time, current_timestamp

-- cur_date, cur_time, now() (shortened versions of the above)


-- current time
SELECT CURTIME();

-- current date
SELECT CURDATE();

-- current datetime
SELECT NOW();

SELECT CURTIME(), CURDATE(), NOW();

-- someone was just born
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Hazel',CURDATE(),CURTIME(),NOW());

SELECT * FROM people;
-- use same operators 

SELECT * FROM people;

-- get all the people born before 2005 

SELECT name, birthdate FROM people
WHERE YEAR(birthdate) < 2005;

-- get people born in the afternoon

SELECT name, birthdt FROM people 
WHERE HOUR(birthdt) > 12;

-- CAST a string to a date

SELECT CAST('09:00:00' AS TIME);

-- get all people born between 12 and 6 in the afternoon

SELECT name, birthtime FROM people
WHERE HOUR(birthtime) BETWEEN CAST(12 AS TIME) AND CAST(18 AS TIME);
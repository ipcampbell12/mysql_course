SELECT name, birthdate, HOUR(birthdt) AS birth_hour
FROM people;

SELECT name, birthdate, MINUTE(birthdt) AS bith_minute
FROM people;

SELECT name, birthdate, SECOND(birthdt) AS birth_second
FROM people;

-- can also extract date and time from datetime
SELECT birthdt, DATE(birthdt), TIME(birthdt) FROM people;

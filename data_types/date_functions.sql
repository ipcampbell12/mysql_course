-- formatting or extracting dates

-- get day of month, integer value of day of month

SELECT birthdate, DAY(birthdate) FROM people;

-- get day of week, integer value of day of week

SELECT birthdate, DAYOFWEEK(birthdate) FROM people;

-- get day of year, integer value of day of year

SELECT birthdate, DAYOFYEAR(birthdate) FROM people;

-- return name of the month and name of the day of the week

SELECT name, birthdate, MONTHNAME(birthdate), DAYNAME(birthdate) FROM people;

-- but these function wont work with just time values, would have to be datetime

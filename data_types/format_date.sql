-- we want this format: ' April 11 1985'


-- cant use concat
SELECT CONCAT(MONTHNAME(birthdate),' ',DAYOFMONTH(birthdate),' ',YEAR(birthdate)) AS birthdate
FROM people;

-- better to use DATE_FORMAT()
-- two arguments: date that you are formatting, and the format string

SELECT birthdate, DATE_FORMAT(birthdate,'%a %b %D %Y')  AS date FROM people;

-- also similar function for TIME_FORMAT

SELECT birthdt, DATE_FORMAT(birthdt, '%H:%i') AS date FROM people;

-- for 12 hour time with AM and PM

SELECT birthdt, DATE_FORMAT(birthdt, '%r') AS date FROM people;

-- can also add text

SELECT birthdt, DATE_FORMAT(birthdt, 'Born at %r ')AS date FROM people;
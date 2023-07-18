-- DATEDIFF - provide two dates or datetimes, subtracts second from first, returns number of days


-- find out how many days ago was everybody's birthday
-- can also do it with datetime, but now time
SELECT name, birthdate, DATEDIFF(CURDATE(), birthdate) FROM people;

-- DATE_ADD or DATE_SUB
-- Takes a date and do some math invovling an interval
-- can also be minutes, seconds etc. 
-- second argument is called a temporal expression
-- could be years, seconds, days, months etc.

-- a day from now
SELECT DATE_ADD(NOW(), INTERVAL 1 DAY);

-- 1 month ago 
SELECT DATE_SUB(NOW(), INTERVAL 1 MONTH);

-- find out the date of everybody's 18th birthday

SELECT name, birthdate, DATE_ADD(birthdate, INTERVAL 18 YEAR) AS voting_year
FROM people;


-- TIMEDIFF and ADDTIME and SUBTIME for just times
-- returns actual time interval

SELECT TIMEDIFF(CURTIME(), '05:00:00');


-- we can also use plus and minus operators

SELECT NOW() - INTERVAL 18 year;

-- who can actually enter the club and get a drink?
-- extract just year 
SELECT name, birthdate, YEAR((birthdate + INTERVAL 21 YEAR)) AS drinking_age 
FROM people;
-- without between you can use

-- get all the books published between 2004 and 2015 (without BETWEEN keyword)

SELECT title, released_year FROM books
WHERE released_year <= 2015 AND released_year >= 2004;

-- get all the books published between 2004 and 2015 (with BETWEEN keyword)
-- between makes it cleaner and shorter
-- BETWEEN is inclusive on both sides of the range

SELECT title, released_year FROM books
WHERE released_year BETWEEN 2004 AND 2015;

-- get all the books between 200 and 300 pages

SELECT title, pages FROM books
WHERE pages BETWEEN 200 AND 300;

-- there is also NOT BETWEEN
-- just provide the range you want to exclude

-- get all the books less than 200 pages or greater than 300 pages

SELECT title, pages FROM books
WHERE pages NOT BETWEEN 200 and 300;



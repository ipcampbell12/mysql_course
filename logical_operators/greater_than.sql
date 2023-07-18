-- get all the books released after the year 2000 

SELECT title, released_year FROM books 
WHERE released_year > 2000;

-- get all the books that have more than 500 pages 

SELECT title, pages FROM books 
WHERE pages > 500;

SELECT 80 > 40; 
-- returns 1, because it's the same as TRUE

SELECT 80 > 100; 
-- returns 0, because it's the same as FALSE

-- mysql does a logical test for each row

SELECT 1 > NULL;

-- returns NULL
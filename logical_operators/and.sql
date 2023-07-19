-- get all the books writen by Dave Eggers pusblished after 2010

SELECT title, released_year, author_lname FROM books
WHERE released_year > 2010 AND author_lname = 'Eggers';

-- can chain together multiple AND statements -- all conditions have to be true

SELECT title, released_year, author_lname FROM books
WHERE released_year > 2010 AND author_lname = 'Eggers' AND title LIKE '%novel%';


-- BOTH left and right side have to be true for the whole expression to evaluate to true
-- if one side is false, then the whole expression evaluates to false 

-- whole statement evaluates to TRUE
SELECT 1 > 0 AND 8 =8;

-- whole statement evaluates to FALSE
SELECT 1 > 0 AND 8 =7;

-- find books that have a title that is at least 15 characters and large number of pages

SELECT title, pages FROM books
WHERE CHAR_LENGTH(title) >=30 AND pages >= 400;

-- retrieiving intersection of two conditions
-- select all books written by Carver, Lahiri or Smith
-- select column row if it's value is in a set of values
-- cleaner and simplere than using lots of OR operators

SELECT title, author_lname FROM books
WHERE author_lname IN ('Carver','Lahiri','Smith');

-- NOT IN
-- get all books NOT written by those authors

SELECT title, author_lname FROM books
WHERE author_lname NOT IN ('Carver','Lahiri','Smith');

-- select all books not published in even years (use a subquery!)

SELECT title, released_year FROM books
WHERE released_year NOT IN (SELECT released_year FROM books
WHERE MOD(released_year,2) =0) AND released_year > 2000;

-- even easier
SELECT title, released_year FROM books
WHERE released_year % 2 != 0 AND released_year >= 2000
ORDER BY released_year;
-- use modulo operator to get remainder
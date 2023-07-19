-- select all books released before the year 2000 

SELECT title, released_year FROM books
WHERE released_year < 2000
ORDER BY released_year;

-- get all the short books

SELECT title, pages FROM books
WHERE pages < 200
ORDER BY pages DESC;

-- get books released in 2010 and later (>=)

SELECT title, released_year FROM books
WHERE released_year >= 2010;

-- get books released in 1985 and earlier

SELECT title, released_year FROM books
WHERE released_year <= 1985;
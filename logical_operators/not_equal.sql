-- select all books not publisehd in 2017

SELECT title, released_year FROM books
WHERE released_year <> 2017
ORDER BY released_year;

-- same as this
SELECT title, released_year FROM books
WHERE released_year != 2017
ORDER BY released_year;

-- books not written by Gaiman
SELECT title, author_lname FROM books
WHERE author_lname != 'Gaiman'
ORDER BY author_lname;
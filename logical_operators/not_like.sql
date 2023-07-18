-- select all the books that DON'T have a space in their title

SELECT title FROM books
WHERE title NOT LIKE '% %';


-- select all the books whose author's DON'T have first names starting with DA

SELECT title, author_fname, author_lname FROM books
WHERE author_fname NOT LIKE 'da%';

-- get all the book titles that DON'T contain the letter e

SELECT title FROM books
WHERE title NOT LIKE '%e%';

-- get all the book titles that DON'T contain the letter 'a'

SELECT title FROM books
WHERE title NOT LIKE '%a%';
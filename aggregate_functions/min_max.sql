-- subqueries are a great way to filter by aggregate values

-- find the earliest year a book was realeased
SELECT
    MIN(released_year) AS earliest
FROM
    books;

-- find the most number of pages
SELECT
    MAX(pages)
FROM
    books;

-- works alphabetically too
SELECT
    MIN(author_lname),
    MAX(author_lname)
FROM
    books;

-- find the title of the longest book
-- subquery runs first
SELECT title, pages FROM books
WHERE pages = (SELECT MAX(pages) FROM books);

-- alternative option
SELECT title, pages FROM books
ORDER BY pages DESC LIMIT 1;

-- find the title of the book that was released earliest
SELECT title, released_year FROM books
WHERE released_year = (SELECT MIN(released_year) FROM books);
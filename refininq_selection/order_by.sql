-- new data is automatically added at the end of the data set
-- sorts in ascending order by default, use DESC to change it
SELECT
    book_id,
    author_fname,
    author_lname
FROM
    books
ORDER BY
    author_lname DESC;

SELECT
    author_fname,
    author_lname,
    title,
    pages
FROM
    books
ORDER BY
    released_year DESC;

-- order by number = order by that number column that you have selected
SELECT
    title,
    author_fname,
    pages
FROM
    books
ORDER BY
    1;

-- can also order by multiple columns
-- sort by 1 column, and then by the next one (not together)
-- and one can be ascending and the ohter descending
SELECT
    author_lname,
    released_year,
    title
FROM
    books
ORDER BY
    author_lname,
    title;

-- can use column aliases to order by; can reference column aliases in ORDER BY clause
SELECT
    CONCAT(author_fname, ' ', author_lname) AS author
FROM
    books
ORDER BY
    author;
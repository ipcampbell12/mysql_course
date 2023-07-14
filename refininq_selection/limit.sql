-- usually only useful with sorting
SELECT
    book_id,
    title,
    released_year
FROM
    books
LIMIT
    4;

-- get 5 oldest books
SELECT
    CONCAT(author_fname, ' ', author_lname) AS author,
    title,
    released_year
FROM
    books
ORDER BY
    released_year
LIMIT
    5;

-- get 5 newest books
SELECT
    CONCAT(author_fname, ' ', author_lname) AS author,
    title,
    released_year
FROM
    books
ORDER BY
    released_year DESC
LIMIT
    5;

-- can also change where the limit starts with first number at keyword
-- select subset in middle of a grouping
-- first number is starting row, second number is count
SELECT
    book_id,
    title,
    released_year
FROM
    books
ORDER BY
    released_year DESC
LIMIT
    2, 5;
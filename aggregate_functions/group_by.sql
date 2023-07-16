-- summarizes identical data into single rows
-- select how many books each author has written
-- will count count the number of rows in each group
SELECT
    COUNT(*) AS book_count,
    CONCAT(author_fname, ' ', author_lname) AS author
FROM
    books
GROUP BY
    author
ORDER BY
    book_count DESC;

-- find out how many books were for each released_year
SELECT
    COUNT(*) AS books_per_year,
    released_year
FROM
    books
GROUP BY
    released_year
ORDER BY
    books_per_year DESC;
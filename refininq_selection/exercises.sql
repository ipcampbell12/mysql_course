-- EXERCISE 1: select all the book titles that contain the word stories
SELECT
    title
FROM
    books
WHERE
    title LIKE '%stories%';

-- EXERCISE 2: select the longest book
SELECT
    title,
    pages
FROM
    books
ORDER BY
    pages DESC
LIMIT
    1;

-- EXERCISE 3: print a summary with title and year for the 3 most recent books
SELECT
    CONCAT(title, ' - ', released_year) AS summary
FROM
    books
ORDER BY
    released_year DESC
LIMIT
    3;

-- EXCERICSE 4: find all the books with an author last name that contains a space
SELECT
    title,
    author_lname
FROM
    books
WHERE
    author_lname LIKE '% %';

-- EXERCISE 5: find the 3 books with lowest stock quantity
SELECT
    title,
    released_year,
    stock_quantity
FROM
    books
ORDER BY
    stock_quantity,
    released_year DESC
LIMIT
    3;

-- EXERCISE 6: print title and author last name sorfted by lname then title
SELECT
    title,
    author_lname
FROM
    books
ORDER BY
    author_lname,
    title;

-- EXERCISE 7: make this happen
SELECT
    UPPER(
        CONCAT(
            'My favorite author is ',
            author_fname,
            ' ',
            author_lname
        )
    ) AS yell
FROM
    books
ORDER BY
    author_lname;
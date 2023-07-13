-- EXERCISE 1
SELECT
    REVERSE(
        UPPER('Why does my cat look at me with such hatred?')
    ) AS hatred;

-- EXERCISES 2
-- will replace each space with a dash/hyphen
-- I-like-cats
-- EXERCISE 3
SELECT
    REPLACE(title, ' ', '->') AS title
FROM
    books;

-- EXERCISE 4
SELECT
    author_lname AS forwards,
    REVERSE(author_lname) AS backwards
FROM
    books;

-- EXERCISE 5
SELECT
    UPPER(CONCAT(author_fname, ' ', author_lname)) AS 'full name in caps'
FROM
    books;

-- EXERCISE 6
SELECT
    CONCAT(title, ' was released in ', released_year) AS blurb
FROM
    books;

-- EXERCISE 7
SELECT
    title,
    CHAR_LENGTH(title) AS 'character count'
FROM
    books;

-- EXERCISE 8
SELECT
    CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short title',
    CONCAT(author_lname, ',', author_fname) AS author,
    CONCAT(stock_quantity, ' in stock') AS quantity
FROM
    books;
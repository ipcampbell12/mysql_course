-- useful for basic searching, beyond just an exact match
-- fuzzier searching
-- find the books where the author's name has a 'da'
-- wild cards: percents signs %% 
-- or or more characters
SELECT
    title,
    author_fname
FROM
    books
WHERE
    author_fname LIKE '%da%';

-- Select all books with a colon in their title
SELECT
    title
FROM
    books
WHERE
    title LIKE '%:%';

-- undescore = exactly one character
-- select all books that have an author first name with exactly four characters
SELECT
    title,
    author_fname
FROM
    books
WHERE
    author_fname LIKE '____';

-- get all the books where author's name end with an n
SELECT
    title,
    author_fname
FROM
    books
WHERE
    author_fname LIKE '%n';

-- matching a percent sign
-- escape with a back slash 
-- get a book title that has a percent sign in it 
-- use the same syntax for an underscore
SELECT
    title
FROM
    books
WHERE
    title LIKE '%\%%';
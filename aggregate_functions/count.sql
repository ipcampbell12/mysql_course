-- count(*) means how many rows we get back from this query
SELECT
    COUNT(*) AS total
FROM
    books;

-- boils whole result down into a single value
-- can pass distinct into parens to know how many author fnames
SELECT
    COUNT(DISTINCT author_fname)
FROM
    books;

-- how many unique released years
SELECT
    COUNT(DISTINCT released_year)
FROM
    books;

-- count distinct last names in the dataset
SELECT
    COUNT(DISTINCT author_lname) AS unique_authors
FROM
    books;

-- find out the number of titles that contain the word 'the' 
SELECT
    COUNT(*) AS contains_the
FROM
    books
WHERE
    title LIKE '%the%';
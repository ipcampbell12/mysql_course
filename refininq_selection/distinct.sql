-- DISTINCT goes after SELECT before column name
-- SELECT
--     DISTINCT author_lname
-- FROM
--     books;
-- SELECT
--     DISTINCT released_year
-- FROM
--     books;
-- return distinct author full names
-- using CONCAT
SELECT
    DISTINCT CONCAT(author_fname, ' ', author_lname) AS distinct_fullname
FROM
    books;

-- alternative way -- select distinct combos -- cleaner way
SELECT
    DISTINCT author_fname,
    author_lname
FROM
    books;
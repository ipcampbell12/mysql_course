-- use IS NULL and IS NOT NULL to get null values

SELECT * FROM books
WHERE author_lname IS NULL;


-- delete all books with no author
DELETE FROM books
WHERE author_lname IS NULL;

-- can't use = or != for null values
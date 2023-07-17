-- substring returns smaller part of a string
-- can also use SUBSTR, exactly the same

-- 1. first argument must be string you want some string from (usually column name)
-- 2. second argument is starting position (1 indexed base)
-- 3. third arugment is lenght of sub string (not end)
-- if you don't provide a second number, it will start at that point and go to the end
-- can use negative starting point: counting backgrounds from end of string, and then third argument is counting forward

SELECT SUBSTRING( 'HELLO WORLD',1,6);

SELECT SUBSTRING(title,1,15) FROM books;

SELECT 
CONCAT(SUBSTRING(author_fname, 1,1),'. ', author_lname) AS author_name
FROM books;
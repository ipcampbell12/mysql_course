-- tell number of characters in a given string
-- not same as LENGTH function
SELECT
    CHAR_LENGTH('Hello World');

SELECT
    CHAR_LENGTH(title) AS length
FROM
    books;
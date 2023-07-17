SELECT UPPER('hello');
SELECT LOWER('HELLO');

SELECT
    UPPER(title)
FROM
    books;

SELECT
    CONCAT('I LOVE ', UPPER(title), ' !!!') AS love_title
FROM
    books;
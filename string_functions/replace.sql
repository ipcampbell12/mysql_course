-- replace function
-- 3 different string arguments
-- 1. string operating on
-- 2. part we want to replace
-- 3. what we want to replace it with
-- this function is case sensitive
SELECT
    REPLACE('Hello World', 'Hell', '%$#@');

SELECT
    REPLACE('cheese bread coffee milk', ' ', ' and ');

SELECT
    REPLACE(title, ' ', '-') AS dash_title
FROM
    books;



    
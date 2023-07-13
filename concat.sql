-- takes any number of strings and combines them

SELECT CONCAT('H','E','L','L','O');

SELECT CONCAT(author_fname, ' ', author_lname) AS author_fullname
FROM books;
-- for CONCAT_WS, provide separator as first argument
-- Not putting a space after the double hyphen will cause errors in mysql.




SELECT CONCAT_WS(' - ', title, author_fname, author_lname) FROM books;
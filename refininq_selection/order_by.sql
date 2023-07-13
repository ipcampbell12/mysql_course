-- new data is automatically added at the end of the data set
-- sorts in ascending order by default, use DESC to change it
SELECT
    book_id,
    author_fname,
    author_lname
FROM
    books
ORDER BY
    author_lname;
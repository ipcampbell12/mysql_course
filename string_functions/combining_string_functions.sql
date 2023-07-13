-- pass function result to another function 
-- SELECT CONCAT(SUBSTRING(title, 1, 10),'...') AS short_title
-- FROM books;
-- return author's initials
-- select format document from command pallet (command+shit+p)
-- will format when you save
SELECT
    CONCAT(
        SUBSTRING(author_fname, 1, 1),
        '. ',
        SUBSTRING(author_lname, 1, 1),
        '.'
    ) AS author_initials
FROM
    books;
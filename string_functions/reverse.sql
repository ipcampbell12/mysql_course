-- SELECT
--     REVERSE('chicken nuggets');
-- pretty straightfoward
SELECT
    REVERSE(author_fname)
FROM
    books;

-- turn every person's name into a palindrome
SELECT
    CONCAT(author_fname, REVERSE(author_fname)) 
    AS palindrome
FROM
    books;
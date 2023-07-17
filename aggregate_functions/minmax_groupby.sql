-- find the year each author published their first book
-- also find the most recently published book
-- also find number of books witten
-- also find the longest page count

SELECT 
    CONCAT(author_fname,' ', author_lname) AS author, 
    MIN(released_year) AS first_published,
    MAX(released_year) AS most_recent,
    COUNT(*) AS books_written,
    MAX(pages) AS longest_page_count
FROM books
GROUP BY author
ORDER BY first_published, most_recent;
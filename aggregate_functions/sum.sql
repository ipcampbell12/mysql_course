-- find out total number of pages in data set
SELECT SUM(pages) FROM books;

-- find total number of pages each author has written
SELECT CONCAT(author_fname,' ', author_lname) AS author, SUM(pages) AS total_pages 
FROM books 
GROUP BY author 
ORDER BY total_pages;


-- using SUM with non numeric values (i.e. text) results in a 0 output
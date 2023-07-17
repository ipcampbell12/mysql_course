-- calculat the average released_year across all books

SELECT ROUND(AVG(released_year),0) FROM books;

-- calculate the average number of pages across all the books

SELECT ROUND(AVG(pages),0) FROM books;

-- calculate the average stock quantity across all the books

SELECT ROUND(AVG(stock_quantity))FROM books;


-- calculate the average stock quantity for books released in the same year
-- also include how many books 
SELECT released_year, ROUND(AVG(stock_quantity)) AS books_in_stock, COUNT(*) AS books
FROM books
GROUP BY released_year
ORDER BY books_in_stock;
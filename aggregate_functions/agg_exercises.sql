-- EXERCISE 1: print total number of books in data set

SELECT COUNT(*) AS total_books FROM books;

-- EXERCISE 2: print out how many books were released in each year

SELECT released_year, COUNT(*) AS books_per_year 
FROM books
GROUP BY released_year
ORDER BY books_per_year DESC;


-- EXERCISE 3: print out toal number of books in stock

SELECT SUM(stock_quantity) AS books_in_stock4 FROM books; 

-- EXERCISE 4: find the average released year for each author

SELECT ROUND(AVG(released_year),0) AS avg_year, author_fname, author_lname
FROM books
GROUP BY author_lname, author_fname
ORDER BY avg_year;

-- EXERCISE 5: find the full name of the author who wrote the longest books
SELECT CONCAT(author_fname,' ',author_lname) AS author, title, pages
FROM books 
WHERE pages = (SELECT MAX(pages) FROM books);

-- EXERCISE 6: find the number of books and average pages for each released year

SELECT released_year AS year, COUNT(*) AS '# books', AVG(pages) AS 'avg pages'
FROM books
GROUP BY released_year
ORDER BY released_year;
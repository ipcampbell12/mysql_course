-- make decisions about values
-- creates a new column based on values from another colum

SELECT title, released_year,
    CASE
        WHEN released_year >= 2000 THEN 'Modern Lit'
        ELSE '20th Century Lit'
    END AS genre
FROM books;

-- show stock rating

-- for each, only one condition will end up running
-- mysql goes in order from top to bottom evaluting the when clauses

SELECT title, stock_quantity, 
    CASE
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
        ELSE '***'
    END AS stock_rating
FROM books;

-- but could also just use <= and let the order do the between logic
SELECT title, stock_quantity, 
    CASE
        WHEN stock_quantity <= 40 THEN '*'
        WHEN stock_quantity <= 70 THEN '**'
        WHEN stock_quantity <= 100 THEN '***'
        WHEN stock_quantity <= 140 THEN '****'
        ELSE '*****'
    END AS stock_rating
FROM books;
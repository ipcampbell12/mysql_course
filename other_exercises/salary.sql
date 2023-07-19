-- get the second longest book

WITH page_cte AS (SELECT 
    title, 
    pages,
    DENSE_RANK() OVER(ORDER BY pages DESC) AS page_rank
FROM books)

SELECT
    CASE 
        WHEN COUNT(*) = 1 THEN null
        ELSE (SELECT pages FROM page_cte WHERE page_rank = 2)
    END AS SecondLongestBook
FROM page_cte;

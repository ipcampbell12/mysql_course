-- have left and right side that are both evaluated 
-- only one side of expression has to evaluate to true
-- only have to satisify one comparison/condition

SELECT title, author_lname, released_year FROM books
WHERE author_lname = 'Eggers' OR released_year > 2010;


-- whole expression will evaluate to TRUE because only one side of OR has to be true
SELECT 1 < 5 OR 4 =5;

-- whole expression will evaluate to FALSE because both sides are false (at least one has to be true)
SELECT 1 < 0 OR 4 =5;

-- can also chain mutliple OR statements

-- find books that are short or are short story collections

SELECT title, pages FROM books
WHERE pages <200 OR title LIKE '%stories%';
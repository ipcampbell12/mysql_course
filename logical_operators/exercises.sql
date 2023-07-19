-- EXERCISE 1: evalute the following 

SELECT 10 != 10;
-- returns 0 (FALSE) because 10 does equal 10

SELECT 15 > 14 AND 99 -5 <= 94; 
-- returns 1 (TRUE) because 15 is greater than 14 and 99 -5 does equal 94; both sides evaluate to true

SELECT 1 IN (5,3) OR 9 BETWEEN 8 AND 10;
-- returns 1 (TRUE) because while the 1 is not in the (5,3) 9 IS between 8 and 10. Because there is an OR expreassion, only side needs to be true, meaning the whole expression evaluates to true


-- EXERCISE 2: get all books written before 1980

SELECT title, released_year FROM books
WHERE released_year < 1980;

-- EXERCISE 3: get all books written by eggers of chabon 

-- option 1: OR 
SELECT title, author_lname FROM books
WHERE author_lname = 'Eggers' OR author_lname = 'Chabon';

-- option 2: IN
SELECT title, author_lname FROM books
WHERE author_lname IN ('Eggers','Chabon');

-- EXERCISE 3: get all books written by Lahiri that were published after the year 2000

SELECT title, author_lname, released_year FROM books
WHERE author_lname = 'Lahiri' AND released_year > 2000;

-- EXERCISE 3: get all books with page count between 100 and 200

SELECT title, pages FROM books
WHERE pages BETWEEN 100 AND 200;

-- EXERCISE 4: get all books where author's last name starts with a c or an s
-- could also have used substring

SELECT title, author_lname FROM books
WHERE author_lname LIKE 'C%' OR author_lname LIKE 'S%';

SELECT title, author_lname FROM books
WHERE SUBSTRING(author_lname,1,1) IN ('C','S');


-- EXERCISE 5: short stories, memoir, novel
-- could also use IN keyword 
-- or use second WHEN clasue for second half of OR clause

SELECT title, author_lname,
    CASE 
        WHEN title LIKE '%stories%' THEN 'Short Stories'
        WHEN title = 'Just Kids' OR title = 'A Heartbreaking Work of Staggering Genius' THEN 'Memoir'
        ELSE 'Novel'
    END AS type
FROM books;


-- EXERCISE 6: make this happen

SELECT author_fname,author_lname,
    CASE
        WHEN COUNT(*) = 1 THEN "1 book"
        ELSE CONCAT(COUNT(*)," books")
    END AS count
FROM books
GROUP BY author_lname,author_fname;
-- take into account there are multiple authors with the same last name

SELECT author_lname, author_fname, COUNT(*) FROM books
GROUP BY author_lname, author_fname
ORDER BY author_lname;


-- or could councat 

SELECT CONCAT(author_fname,' ', author_lname) AS author, COUNT(*) AS book_count FROM books
GROUP BY author
ORDER BY book_count DESC;
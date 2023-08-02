-- EXERCISE 1 -- CREATE THIS SCHEMA
CREATE TABLE students (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100)
);

CREATE TABLE papers (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(150),
    grade INTEGER,
    student_id INTEGER,
    FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE CASCADE
);

-- ADD THIS DATA
-- INSERT INTO students (first_name) VALUES 
-- ('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');
 
-- INSERT INTO papers (student_id, title, grade ) VALUES
-- (1, 'My First Book Report', 60),
-- (1, 'My Second Book Report', 75),
-- (2, 'Russian Lit Through The Ages', 94),
-- (2, 'De Montaigne and The Art of The Essay', 98),
-- (4, 'Borges and Magical Realism', 89);


-- EXERCISES 2 - print this join

SELECT first_name, title, grade FROM students s
JOIN papers p ON s.id = p.student_id
ORDER BY grade DESC;

-- EXCERCISE 3 - include any students who haven't written a paper

SELECT first_name, title, grade FROM students s 
LEFT JOIN papers p ON s.id = p.student_id;

-- EXCERCISE 4 - include any students who haven't written a paper and use  a default value with IFNULL

SELECT first_name, IFNULL(title,'MISSING'), IFNULL(grade,0) FROM students s 
LEFT JOIN papers p ON s.id = p.student_id;


-- EXERCISE 5 - print average grade for each paper for each student

SELECT first_name, IFNULL(AVG(grade),0) AS average FROM students s
LEFT JOIN papers p ON s.id = p.student_id 
GROUP BY first_name
ORDER BY average DESC;

-- EXERCISE 6 - say if each student is passing or failing

SELECT first_name, IFNULL(AVG(grade),0) AS average, 
    CASE
        WHEN IFNULL(AVG(grade),0) > 75 THEN 'PASSING'
        ELSE 'FAILING'
    END AS passing_status
FROM students s
LEFT JOIN papers p ON s.id = p.student_id 
GROUP BY first_name
ORDER BY average DESC;

-- LEFT JOIN -- good for info about LACK of overlap
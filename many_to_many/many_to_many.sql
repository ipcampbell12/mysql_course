-- many to many examples
-- books and authors; blog posts and tags; students and classes
-- tv show reviwing application
-- reviewer rates many shows 
-- shows have many reviews 
-- series data and reviewers data
-- connected through reviews data (join table/association table/union table)


CREATE TABLE reviewers (
    id INTEGER PRIMARY KEY AUTO_INCREMENT, 
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE series (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(70) NOT NULL,
    released_year YEAR NOT NULL,
    genre VARCHAR(30) NOT NULL,
    CONSTRAINT CHECK (genre IN('comedy','animation','drama'))
);

CREATE TABLE reviews (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    rating DECIMAL(2,1),
    series_id INTEGER,
    reviewer_id INTEGER,
    FOREIGN KEY (series_id) REFERENCES series(id),
    FOREIGN KEY (reviewer_id) REFERENCES reviewers(id)
);

-- INSERT INTO series (title, released_year,genre) VALUES ('Stranger Things', 2016 ,'horror');

ALTER TABLE reviewers 
MODIFY first_name VARCHAR(50) NOT NULL;

ALTER TABLE reviewers 
MODIFY last_name VARCHAR(50) NOT NULL;
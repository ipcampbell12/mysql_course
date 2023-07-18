-- EXERCISE 1: What is a good use case for CHAR data types? 
-- zipcodes, phone_numbers, state or country abbreviations, passwords?, initials, year, airport code ie PDX, LAX
-- these would require only a fixed amount of characters, allowing you to save memory usage, since CHAR takes up less memory storage

-- EXERCISE 2: 

CREATE TABLE invenotry (
    item_name VARCHAR(40),
    price DECIMAL(7,2),
    quantity INTEGER UNSIGNED
);

-- EXERCISE 3: What's the difference between datetime and timestamp? 
-- They both look the same (same format, date and time) but TIMESTAMP takes up less memory storage
-- this is because it has a smaller range of possible values: only January 1st 1970 to Janurary 19th 2038
-- big different in range

-- EXERCISE 4: write a select statement to print out the current time, but just time


SELECT CURTIME();

-- EXERCISE 5: write a select statement to print out the current date, but no time

SELECT CURDATE();

-- EXERCISE 6: write a select statement to print out the current day of the week as a number

SELECT DAYOFWEEK(CURDATE()) ;

-- EXERCISE 7: write a select statement to print out the current day of the week as the name of the day

SELECT DAYNAME(CURDATE()) ;

-- EXERCISE 8: write a select statement to print out the current day and time using this format: 'mm/dd/yyyy'

SELECT DATE_FORMAT(CURDATE(),'%m/%d/%Y');

-- EXERCISE 8: write a select statement to print out the current day and time using this format: 'January 2nd at 3:15'

SELECT DATE_FORMAT(NOW(),'%M %D at %k:%i');


-- EXERCISE 9: create a tweets table with content, username and time tweet was created

CREATE TABLE tweets (
    content VARCHAR(180),
    username VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- could also use NOW() instead of CURRENT_TIMESTAMP
DESCRIBE tweets;

INSERT INTO tweets (content) VALUES ('I want some soda');

SELECT * FROM tweets;
-- custom constraints

-- you have to be 18 or older to enter the club

CREATE TABLE partiers (
    name VARCHAR(50);
    age INT CHECK (age > 18)
);

-- write CHECK and then in parens add a logical test
-- if the row we are trying to insert does not pass that test, it will not be inserted


CREATE TABLE users (
    username VARCHAR(20) NOT NULL,
    age INT CHECK(age >0)
);


INSERT INTO users (username, age) VALUES ('bluethecat',14);

-- will throw an error: check is violated
INSERT INTO users (username, age) VALUES ('bobby123',-5);


-- has to be a palindrome to be entered into the table
CREATE TABLE palindromes (
    word VARCHAR(100) CHECK (REVERSE(word)=word)
);

INSERT INTO palindromes (word) VALUES ('racecar');

-- throws check violated error
INSERT INTO palindromes (word) VALUES ('mommy');

-- can use any other operator too


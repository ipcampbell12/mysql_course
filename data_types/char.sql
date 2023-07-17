-- char and varchar are different in the way they are stored and retrieved

-- also differe in maximum length and wether trailing spaces are retained

-- can store max length for VARCHAR, optimized to store text of different sizes

-- char is good for text that will be the same size each time (i.e. two letters each time)

-- CHAR has fixed lengths - every string inserted will be that size, allows you to take up less memory

-- will add white space to make it that length if the value stored is less (i.e. padding)

-- spaces are removed when value is retrieved

-- for CHAR it's actually wasteful to store things that are smaller

-- for CHAR storage is same number of bytes each time

-- but if data is similar in size, more efficient to use CHAR 

-- CHAR is faster for fixed length test: i.e. state abbrevaitions, yes/no flags, zip codes

-- VARCHAR for everthing else

-- for both types, if you try to insert a value that is longer than set length, it will return an error (unless you change the settings)

CREATE TABLE friends (
    name VARCHAR(30)
);

DESCRIBE states;

INSERT INTO friends (name)
VALUES ('Bonnie'),
    ('Davis'),
    ('Daniella');

CREATE TABLE states (
    abbr CHAR(2)
);

INSERT INTO states (abbr)
VALUES ('CA'),('FL'),('WA'),('OR');

SELECT * FROM states;
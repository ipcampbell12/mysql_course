

CREATE TABLE folks (
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100), 
    last_name VARCHAR(100),
    age INTEGER
);



--Add not null constraint to columns 

ALTER TABLE folks
MODIFY first_name VARCHAR(100) NOT NULL;


ALTER TABLE folks
MODIFY last_name VARCHAR(100) NOT NULL;

ALTER TABLE folks
MODIFY age INTEGER NOT NULL;

DESCRIBE folks;

--to remove a constraint, just do a modify statement and restate the column's data type WIHTOUT including not null

ALTER TABLE folks
MODIFY age INTEGER;

DESCRIBE folks;

--always use single quotes for strings
-- use back slashes to escape quotes
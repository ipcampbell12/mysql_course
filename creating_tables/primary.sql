--calling a primary key not null is techincally redundant 
CREATE TABLE employees (
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
    last_name VARCHAR(100) NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    middle_name VARCHAR(100),
    age INTEGER NOT NULL,
    current_status VARCHAR(20) DEFAULT 'employe'
);


ALTER TABLE employees
MODIFY current_status VARCHAR(25) DEFAULT 'employed';

ALTER TABLE employees
MODIFY current_status VARCHAR(100) NOT NULL DEFAULT 'employed';

DESCRIBE employees;

INSERT INTO employees (first_name, last_name, age)
VALUES ('Bilbo','Baggins',23);

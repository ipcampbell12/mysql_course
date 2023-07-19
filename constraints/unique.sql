CREATE TABLE contacts (
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE
);

DESCRIBE contacts;

INSERT INTO contacts (name, phone) 
VALUES ('Billy Bob','878-121-3455');

-- will throw an error if you try to add another phone number that is the same
INSERT INTO contacts (name, phone) 
VALUES ('Timmy Tim Tim','878-121-3455');

SELECT * FROM contacts;
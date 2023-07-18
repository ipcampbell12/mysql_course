CREATE TABLE captions (
    text VARCHAR(150),
    created_at TIMESTAMP default CURRENT_TIMESTAMP
); 

-- whenever we make a new row in this table, created_at value will be set to current timestamp

DESCRIBE captions;

-- will automatically insert timestamp when new row is inserted

INSERT INTO captions (text) VALUES ("What's that you said?");

INSERT INTO captions (text) VALUES ("Beautiful sunset yeah!");

SELECT * FROM captions;

CREATE TABLE captions2 (
    text VARCHAR(150),
    created_at TIMESTAMP default CURRENT_TIMESTAMP,
    updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- updated_at will update whenever any other column is changed, will have new current timestamp
-- initially null
-- but you can have both default value and on update

INSERT INTO captions2 (text) VALUES ('i love life');


SELECT * FROM captions2;

UPDATE captions2 SET text = "i love life !!!!";
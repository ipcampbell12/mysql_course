-- mysql creates it's own name for our checked constraints (i.e check_1)
-- use CONSTRAINT keyword and then a name before CHECK

CREATE TABLE partiers2 (
    name VARCHAR(50),
    age INTEGER,
    CONSTRAINT age_over_18 CHECK (age >18)
);


CREATE TABLE users2 (
    username VARCHAR(20) NOT NULL,
    age INTEGER,
    CONSTRAINT positive_age  CHECK(age >= 0)
);


INSERT INTO users2 (username,age) VALUES ('jackson',5);
INSERT INTO users2 (username,age) VALUES ('dumplingking1',18);

-- uses the constraint name in error message

INSERT INTO users2 (username,age) VALUES ('thirstrap8',-4);
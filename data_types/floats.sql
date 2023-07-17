-- floats and doubles

-- DECIMAL data type can take up more space
-- FLOATS and DOUBLES allow us to store larger numbers using less space

-- but it comes at the cost of precision
-- for floats, become less precise after 7 digits after the decimal point

CREATE TABLE numbers (
    x FLOAT,
    y DOUBLE
);

DESCRIBE numbers;

-- the float number gets cut off at the end, loses some precision
INSERT INTO numbers (x,y) VALUES (1.12345678, 1.12345678);

SELECT * FROM numbers;

-- every time you do some kind of calculation with any piece of data involving a decimal point, there is a potential loss of precision

-- for SUPER precise numbers, convert things into a  BIGINT and do math to turn decimals into a whole number and store as BIG INT

--DOUBLE is twice as precise as FLOAT, but also require twice as much memory
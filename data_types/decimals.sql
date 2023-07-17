-- if you try to entere a decimal value into a column with integer, the value will be rounded

-- not good for prices, finances

-- options 
-- DECIMAL - store precise values, guarranteed to be accurate
-- decimal precision can be costly
-- DECIMAL is most precies type

-- two arguments : first is total number of digits, second is how many of those will come after the decimal
-- will be max, up to that amount, but can't have more


CREATE TABLE products (
    price DECIMAL(5,2)
);

INSERT INTO products (price) VALUES (4.50); 
INSERT INTO products (price) VALUES (456.99);

-- will return an error
INSERT INTO products (price) VALUES (8347.1);
-- ERROR 1264 (22003): Out of range value for column 'price' at row 1
-- 2 digits have to come after deciaml

-- doesn't throw an error, but gives a warning
INSERT INTO products (price) VALUES (5.026);
SHOW WARNINGS;
-- will result in truncated value
-- will be less precise, roudned up to fit within 2 digits

SELECT * FROM products;

-- so you can have multiple digits after the decimal and it will get truncated without an error 
-- but you can't have more than max for before decimal, will get an error
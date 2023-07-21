-- column combos have to be unique4


-- name doesn't have to be unique and address doesn't have to be unique, but name and address combo has to be unique


CREATE TABLE companies (
    supplier_id INTEGER AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE,
    address VARCHAR(255) NOT NULL,
    PRIMARY KEY (supplier_id),
    CONSTRAINT name_address UNIQUE (name, address)
);

INSERT INTO companies (name, phone, address)
    VALUES ('John Cena','503-245-6789','123 My house');

INSERT INTO companies (name, phone, address)
    VALUES ('John Cafe','503-245-6787','123 My house');

-- it won't let you do this
INSERT INTO companies (name, phone, address)
    VALUES ('John Cafe','503-245-6782','123 My house');


-- can also create your own custom check constraints that use multiple columns
CREATE TABLE houses (
    purchase_price INTEGER NOT NULL,
    sale_price INTEGER NOT NULL, 
    CONSTRAINT sale_greater CHECK (sale_price >= purchase_price)
);

INSERT INTO houses (purchase_price, sale_price) VALUES (100, 200);

-- it won't let you do this because purchase price has to be greater than sale price
INSERT INTO houses (purchase_price, sale_price) VALUES (200, 100);
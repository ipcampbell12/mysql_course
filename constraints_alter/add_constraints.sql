-- brackets in docs means it's optional

ALTER TABLE houses
ADD CONSTRAINT positive_price CHECK (purchase_price >= 0);

-- won't let you add this; positive price is violated
INSERT INTO houses (purchase_price, sale_price) VALUES (-200,400);

-- can also drop a constraint

ALTER TABLE houses 
DROP CONSTRAINT positive_price;


-- now the above insert statement will work
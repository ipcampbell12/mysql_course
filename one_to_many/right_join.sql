-- take all rows from right sid (second table) and include them, plus any overlap from left side

-- with customers, orders will be same as inner join (no orders that don't have customers)

INSERT INTO orders (price, order_date) VALUES (100, CURDATE());
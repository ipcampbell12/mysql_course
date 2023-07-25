-- select all of the orders placed by Boy George 

-- using joins
-- see cusomters info along side orders table

SELECT o.* ,c.first_name, c.last_name FROM customers c
JOIN orders o ON c.id = o.customer_id
WHERE c.first_name = 'Boy' AND c.last_name = 'George';

-- using subquery

SELECT * FROM orders 
WHERE customer_id = (SELECT id FROM customers WHERE first_name = 'Boy' AND last_name = 'George');


-- cross join 
-- combine every single row from customers and combine it with every single row from orders
-- every single customer with every single order

SELECT * FROM customers, orders; 
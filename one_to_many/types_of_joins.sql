-- inner join: overlap between two tables

SELECT first_name, last_name, order_date, price FROM customers
JOIN orders ON orders.customer_id = customers.id;


-- inner is implicit


-- combine joins with group by

-- find total amount each customer spent
-- join just helps us put columns side by side; you can also use aggregate functions

SELECT first_name, last_name, SUM(price) AS total_spent FROM customers 
JOIN orders ON orders.customer_id = customers.id
GROUP BY first_name, last_name
ORDER BY total_spent;

-- dont' need to prepend columns with table name because there are no columns with same names that are being selected
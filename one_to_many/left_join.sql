-- left join
-- less common

-- everything from A along with matching records from B
-- all left side plus over lap from right side


-- cusomters is on the left since it's reference first
-- still joining on same foreign key


SELECT first_name, last_name, order_date, price FROM customers 
LEFT JOIN orders ON orders.customer_id = customers.id;

-- result in null values where there are no records from right table (orders)
-- whereas inner join won't return any null values; only shares where they are shared by both tables 

-- why? 
-- can reveal customers who have never placed an order

-- but the order of tables in query matters
-- switching the right and left table returns the same result as an INNER JOIN
SELECT order_date, price, first_name, last_name  FROM orders 
LEFT JOIN customers ON orders.customer_id = customers.id;

-- after all, there won't be any orders that don't correspond to a particular customer

-- left join with group by
-- IFNULL(SUM(amount),0), the second value after the comma is what will be added if there is a null value
-- kind of like IFERROR in google sheets
SELECT first_name, last_name, IFNULL(SUM(price),0) AS total_spent FROM customers 
LEFT JOIN orders ON orders.customer_id = customers.id
GROUP BY first_name, last_name
ORDER BY total_spent;
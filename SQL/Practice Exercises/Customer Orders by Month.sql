SELECT customer_name, MONTH(order_date) AS order_month, COUNT(order_id) AS order_count
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
WHERE YEAR(order_date) = YEAR(NOW())
GROUP BY customer_name, order_month;

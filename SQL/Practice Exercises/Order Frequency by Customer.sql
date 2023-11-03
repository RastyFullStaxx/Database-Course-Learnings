SELECT customer_name, COUNT(order_id) AS order_count
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY customer_name
ORDER BY order_count DESC;

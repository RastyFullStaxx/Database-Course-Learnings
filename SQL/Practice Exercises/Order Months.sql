SELECT MONTH(order_date) AS order_month, COUNT(order_id) AS order_count
FROM orders
WHERE YEAR(order_date) = YEAR(NOW())
GROUP BY order_month;

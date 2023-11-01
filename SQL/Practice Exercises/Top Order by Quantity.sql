SELECT order_id, SUM(quantity) AS total_quantity
FROM order_details
GROUP BY order_id
ORDER BY total_quantity DESC
LIMIT 5;

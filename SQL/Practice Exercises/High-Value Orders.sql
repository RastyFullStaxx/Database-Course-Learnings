SELECT order_id, SUM(price * quantity) AS total_amount
FROM order_details
GROUP BY order_id
HAVING total_amount > 1000;

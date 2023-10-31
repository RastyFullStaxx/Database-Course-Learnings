SELECT AVG(order_count) AS average_order_count
FROM (
    SELECT customer_id, COUNT(order_id) AS order_count
    FROM orders
    GROUP BY customer_id
) AS order_counts;

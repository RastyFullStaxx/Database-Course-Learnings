SELECT customer_name
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
    WHERE WEEK(order_date) = WEEK(NOW())
    GROUP BY customer_id
    HAVING COUNT(DISTINCT DAYOFWEEK(order_date)) = 5
);

SELECT customer_name
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
    JOIN order_details ON orders.order_id = order_details.order_id
    GROUP BY customer_id
    HAVING AVG(price * quantity) < SUM(price * quantity)
);

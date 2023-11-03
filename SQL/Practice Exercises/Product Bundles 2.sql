SELECT a.product_name AS product1, b.product_name AS product2, c.product_name AS product3, COUNT(*) AS order_count
FROM order_details a
JOIN order_details b ON a.order_id = b.order_id AND a.product_id < b.product_id
JOIN order_details c ON a.order_id = c.order_id AND b.order_id = c.order_id AND b.product_id < c.product_id
GROUP BY a.product_id, b.product_id, c.product_id
ORDER BY order_count DESC
LIMIT 5;

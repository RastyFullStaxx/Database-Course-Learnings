SELECT category, SUM(price * quantity) AS total_revenue
FROM products
JOIN order_details ON products.product_id = order_details.product_id
GROUP BY category
ORDER BY total_revenue DESC
LIMIT 3;

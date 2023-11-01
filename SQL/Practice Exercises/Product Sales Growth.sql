SELECT category, 
       (SUM(price * quantity) - LAG(SUM(price * quantity), 12) OVER (PARTITION BY category ORDER BY YEAR(order_date), MONTH(order_date))) / LAG(SUM(price * quantity), 12) OVER (PARTITION BY category ORDER BY YEAR(order_date), MONTH(order_date)) * 100 AS sales_growth
FROM products
JOIN order_details ON products.product_id = order_details.product_id
JOIN orders ON order_details.order_id = orders.order_id
GROUP BY category, YEAR(order_date), MONTH(order_date);

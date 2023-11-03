SELECT product_name,
    CASE
        WHEN price > LAG(price, 12) OVER (PARTITION BY product_id ORDER BY YEAR(order_date), MONTH(order_date)) THEN 'Price Increase'
        WHEN price < LAG(price, 12) OVER (PARTITION BY product_id ORDER BY YEAR(order_date), MONTH(order_date)) THEN 'Price Decrease'
        ELSE 'No Change'
    END AS price_change
FROM products
JOIN order_details ON products.product_id = order_details.product_id
JOIN orders ON order_details.order_id = orders.order_id
GROUP BY product_name, YEAR(order_date), MONTH(order_date);

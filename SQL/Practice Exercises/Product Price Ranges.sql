SELECT product_name,
    CASE
        WHEN price < 50 THEN 'Low'
        WHEN price BETWEEN 50 AND 100 THEN 'Medium'
        ELSE 'High'
    END AS price_range
FROM products;

SELECT product_name, price,
    CASE
        WHEN price > (SELECT AVG(price) FROM products) THEN 'Above Average'
        ELSE 'Below Average'
    END AS price_comparison
FROM products;

SELECT product_name, AVG(rating) AS avg_rating, COUNT(*) AS review_count
FROM products
LEFT JOIN product_reviews ON products.product_id = product_reviews.product_id
GROUP BY product_name;

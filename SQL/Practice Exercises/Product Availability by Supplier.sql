SELECT product_name, supplier_name
FROM products
JOIN suppliers ON products.supplier_id = suppliers.supplier_id
WHERE quantity > 0;

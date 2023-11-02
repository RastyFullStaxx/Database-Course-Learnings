SELECT o.order_date, p.product_name, od.quantity
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
WHERE o.customer_id = (SELECT customer_id FROM customers WHERE customer_name = 'CustomerName');

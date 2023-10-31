SELECT employee_name, SUM(order_amount) AS total_sales
FROM employees
JOIN sales ON employees.employee_id = sales.salesperson_id
GROUP BY employees.employee_id
ORDER BY total_sales DESC
LIMIT 3;

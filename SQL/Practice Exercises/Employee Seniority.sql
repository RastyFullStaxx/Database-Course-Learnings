SELECT employee_name
FROM employees
WHERE DATEDIFF(NOW(), hire_date) > 3650;

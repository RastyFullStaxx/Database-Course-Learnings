SELECT employee_name
FROM employees
WHERE DATEDIFF(NOW(), hire_date) < 365
  AND promotion_date IS NOT NULL;

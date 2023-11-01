SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;

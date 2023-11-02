SELECT employee_name
FROM employees
WHERE salary_increase > 5000
  AND YEAR(salary_effective_date) = YEAR(NOW()) - 1;

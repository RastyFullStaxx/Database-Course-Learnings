SELECT employee_name,
    (salary - LAG(salary, 12) OVER (PARTITION BY department ORDER BY YEAR(salary_effective_date))) / LAG(salary, 12) OVER (PARTITION BY department ORDER BY YEAR(salary_effective_date)) * 100 AS salary_growth
FROM employees
GROUP BY employee_name, YEAR(salary_effective_date);

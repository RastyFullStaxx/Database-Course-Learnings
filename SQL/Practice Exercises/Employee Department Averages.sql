SELECT department, AVG(salary) AS avg_salary,
    (SELECT AVG(salary) FROM employees) AS overall_avg_salary
FROM employees
GROUP BY department;

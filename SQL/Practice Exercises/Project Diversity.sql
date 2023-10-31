SELECT employee_name
FROM employees
WHERE employee_id IN (
    SELECT employee_id
    FROM employee_projects
    GROUP BY employee_id
    HAVING COUNT(project_id) > 1
);

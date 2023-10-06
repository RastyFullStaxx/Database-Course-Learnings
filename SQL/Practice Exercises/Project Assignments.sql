SELECT employee_name
FROM employees
WHERE employee_id IN (
    SELECT employee_id
    FROM employee_projects
    WHERE project_name = 'ProjectX'
);

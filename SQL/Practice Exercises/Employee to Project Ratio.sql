SELECT AVG(employees_per_project) AS avg_employees_per_project
FROM (
    SELECT project_id, COUNT(employee_id) AS employees_per_project
    FROM employee_projects
    GROUP BY project_id
) AS project_employee_counts;

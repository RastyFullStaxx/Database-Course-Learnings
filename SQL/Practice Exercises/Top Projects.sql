SELECT project_name, COUNT(employee_id) AS employee_count
FROM employee_projects
GROUP BY project_name
ORDER BY employee_count DESC
LIMIT 3;

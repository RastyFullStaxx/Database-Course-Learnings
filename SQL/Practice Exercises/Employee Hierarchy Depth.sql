WITH RECURSIVE EmployeeHierarchy AS (
    SELECT employee_id, manager_id, 1 AS depth
    FROM employees
    WHERE manager_id IS NULL
    UNION ALL
    SELECT e.employee_id, e.manager_id, eh.depth + 1
    FROM employees e
    JOIN EmployeeHierarchy eh ON e.manager_id = eh.employee_id
)
SELECT MAX(depth) AS max_hierarchy_depth
FROM EmployeeHierarchy;

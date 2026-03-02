/*
====================================================
CTE Example
Purpose: Get employees earning above department average
====================================================
*/

WITH dept_average AS (
    -- Step 1: Calculate average salary per department
    SELECT 
        dept_id,
        AVG(salary) AS avg_salary
    FROM employee_salary
    GROUP BY dept_id
)

-- Step 2: Compare employees with department average
SELECT 
    e.employee_id,
    e.first_name,
    e.last_name,
    e.dept_id,
    e.salary,
    d.avg_salary
FROM employee_salary e
JOIN dept_average d
    ON e.dept_id = d.dept_id
WHERE e.salary > d.avg_salary;

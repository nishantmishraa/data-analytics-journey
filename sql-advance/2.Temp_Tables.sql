/*
====================================================
Temporary Table Example
Purpose: Store high salary employees temporarily
====================================================
*/

-- Create temporary table
CREATE TEMPORARY TABLE temp_high_salary AS
SELECT 
    employee_id,
    first_name,
    last_name,
    salary
FROM employee_salary
WHERE salary > 7000;

-- Query temporary table
SELECT * FROM temp_high_salary;

/*
Note:
Temporary tables exist only for the current session.
They are automatically dropped when session ends.
*/

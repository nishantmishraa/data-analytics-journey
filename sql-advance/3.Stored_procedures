/*
====================================================
Stored Procedure Example
Purpose: Get employees by department
====================================================
*/

DELIMITER $$

CREATE PROCEDURE GetEmployeesByDepartment(IN dept_input INT)
BEGIN
    -- Return employees from given department
    SELECT 
        employee_id,
        first_name,
        last_name,
        salary
    FROM employee_salary
    WHERE dept_id = dept_input;
END $$

DELIMITER ;

-- To execute:
-- CALL GetEmployeesByDepartment(1);

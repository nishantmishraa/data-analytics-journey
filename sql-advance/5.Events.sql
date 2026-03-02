/*
====================================================
Event Example
Purpose: Automatically delete employees
         with salary below 3000 every day
====================================================
*/

-- Enable event scheduler (run once if disabled)
SET GLOBAL event_scheduler = ON;

DELIMITER $$

CREATE EVENT delete_low_salary_employees
ON SCHEDULE EVERY 1 DAY
DO
BEGIN
    DELETE FROM employee_salary
    WHERE salary < 3000;
END $$

DELIMITER ;

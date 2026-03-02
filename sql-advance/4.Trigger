/*
====================================================
Trigger Example
Purpose: Automatically insert into employee_log
         when new employee is added
====================================================
*/

-- Create log table
CREATE TABLE employee_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DELIMITER $$

CREATE TRIGGER after_employee_insert
AFTER INSERT ON employee_salary
FOR EACH ROW
BEGIN
    -- Insert record into log table
    INSERT INTO employee_log (employee_id)
    VALUES (NEW.employee_id);
END $$

DELIMITER ;

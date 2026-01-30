/* =====================
   JOINS
===================== */

-- INNER JOIN: only matching rows
SELECT
    dem.employee_id,
    dem.first_name,
    sal.salary
FROM employee_demographics dem
INNER JOIN employee_salary sal
    ON dem.employee_id = sal.employee_id;


-- LEFT JOIN: all rows from left table
SELECT
    dem.employee_id,
    dem.first_name,
    sal.salary
FROM employee_demographics dem
LEFT JOIN employee_salary sal
    ON dem.employee_id = sal.employee_id;


-- RIGHT JOIN: all rows from right table
SELECT
    dem.employee_id,
    dem.first_name,
    sal.salary
FROM employee_demographics dem
RIGHT JOIN employee_salary sal
    ON dem.employee_id = sal.employee_id;


-- FULL JOIN: all rows from both tables
SELECT
    dem.employee_id,
    dem.first_name,
    sal.salary
FROM employee_demographics dem
FULL JOIN employee_salary sal
    ON dem.employee_id = sal.employee_id;

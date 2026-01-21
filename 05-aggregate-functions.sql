-- Counting total rows
SELECT COUNT(*) AS total_employees
FROM employees;

-- Finding total salary
SELECT SUM(salary) AS total_salary
FROM employees;

-- Finding minimum and maximum salary
SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary
FROM employees;

-- Finding average salary
SELECT AVG(salary) AS avg_salary
FROM employees;

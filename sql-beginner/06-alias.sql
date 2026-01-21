-- Using alias to rename columns
SELECT name AS employee_name, salary AS monthly_salary
FROM employees;

-- Alias with aggregate functions
SELECT department, COUNT(*) AS total
FROM employees
GROUP BY department;

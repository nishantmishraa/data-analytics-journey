-- Grouping data by department
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;

-- Grouping with average salary
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

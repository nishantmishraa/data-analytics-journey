-- HAVING is used to filter grouped data
-- WHERE filters rows before grouping
-- HAVING filters groups after grouping

-- Departments with more than 5 employees
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department
HAVING COUNT(*) > 5;

-- Departments with average salary greater than 60000
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 60000;

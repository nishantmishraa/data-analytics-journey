-- Limiting the number of results
SELECT *
FROM employees
LIMIT 5;

-- Top 3 highest paid employees
SELECT name, salary
FROM employees
ORDER BY salary DESC
LIMIT 3;

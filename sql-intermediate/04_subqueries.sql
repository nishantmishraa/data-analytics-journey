/* =====================
   SUBQUERIES
===================== */

-- Subquery in WHERE
SELECT *
FROM employee_salary
WHERE salary > (
    SELECT AVG(salary)
    FROM employee_salary
);


-- Subquery in SELECT
SELECT
    employee_id,
    salary,
    (SELECT AVG(salary) FROM employee_salary) AS avg_salary
FROM employee_salary;


-- Subquery in FROM
SELECT *
FROM (
    SELECT employee_id, salary
    FROM employee_salary
    WHERE salary > 50000
) high_earners;

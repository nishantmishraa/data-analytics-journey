/* =========================
   CASE STATEMENTS
   Conditional logic in SQL
========================= */

-- Basic CASE: categorize employees by age
SELECT
    first_name,
    age,
    CASE
        WHEN age < 25 THEN 'Young'
        WHEN age BETWEEN 25 AND 40 THEN 'Mid Career'
        ELSE 'Senior'
    END AS age_group
FROM employee_demographics;


-- CASE with salary bands
SELECT
    employee_id,
    salary,
    CASE
        WHEN salary < 40000 THEN 'Low'
        WHEN salary BETWEEN 40000 AND 70000 THEN 'Medium'
        ELSE 'High'
    END AS salary_category
FROM employee_salary;


-- CASE inside aggregation (business-style logic)
SELECT
    dept_id,
    COUNT(*) AS total_employees,
    SUM(
        CASE
            WHEN salary > 50000 THEN 1
            ELSE 0
        END
    ) AS high_earners
FROM employee_salary
GROUP BY dept_id;


-- CASE with JOIN (real-world usage)
SELECT
    dem.first_name,
    dem.age,
    sal.salary,
    CASE
        WHEN sal.salary >= 60000 THEN 'Top Performer'
        ELSE 'Average Performer'
    END AS performance_label
FROM employee_demographics dem
INNER JOIN employee_salary sal
    ON dem.employee_id = sal.employee_id;


-- CASE + ORDER BY (custom sorting)
SELECT
    employee_id,
    salary,
    CASE
        WHEN salary >= 70000 THEN 1
        WHEN salary >= 40000 THEN 2
        ELSE 3
    END AS priority
FROM employee_salary
ORDER BY priority;

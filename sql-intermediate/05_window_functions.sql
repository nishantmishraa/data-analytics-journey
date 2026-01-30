/* =====================
   WINDOW FUNCTIONS
===================== */

-- ROW_NUMBER: unique ranking
SELECT
    employee_id,
    salary,
    ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num
FROM employee_salary;


-- RANK: same rank for ties, gaps allowed
SELECT
    employee_id,
    salary,
    RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employee_salary;


-- DENSE_RANK: same rank for ties, no gaps
SELECT
    employee_id,
    salary,
    DENSE_RANK() OVER (ORDER BY salary DESC) AS dense_rank
FROM employee_salary;


-- Ranking within each department
SELECT
    employee_id,
    dept_id,
    salary,
    RANK() OVER (
        PARTITION BY dept_id
        ORDER BY salary DESC
    ) AS dept_rank
FROM employee_salary;

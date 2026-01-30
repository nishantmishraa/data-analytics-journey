/* =====================
   UNION & UNION ALL
===================== */

-- UNION removes duplicates
SELECT first_name
FROM employee_demographics
UNION
SELECT first_name
FROM employee_salary;


-- UNION ALL keeps duplicates
SELECT first_name
FROM employee_demographics
UNION ALL
SELECT first_name
FROM employee_salary;

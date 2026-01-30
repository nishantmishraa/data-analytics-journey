/* =====================
   STRING FUNCTIONS
===================== */

SELECT
    first_name,
    last_name,
    UPPER(first_name) AS upper_name,
    LOWER(last_name) AS lower_name,
    LENGTH(first_name) AS name_length,
    CONCAT(first_name, ' ', last_name) AS full_name,
    SUBSTRING(first_name, 1, 3) AS short_name,
    REPLACE(first_name, 'a', '@') AS replaced_name,
    TRIM('   SQL   ') AS trimmed_text
FROM employee_demographics;


-- LIKE for pattern matching
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'A%';

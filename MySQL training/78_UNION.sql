-- UNION combines the results of two or more SELECT statements

SELECT first_name, last_name FROM employees;
UNION ALL
SELECT first_name, last_name FROM customers;
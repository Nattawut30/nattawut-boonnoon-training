-- Subquery
-- a query within another query
-- query(subquery)

SELECT first_name, last_name, hourly_pay,
	(SELECT AVG(hourly_pay)FROM employees) AS avg_pay
FROM employees;

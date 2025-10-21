-- GROUP BY = aggregate all rows by a specific column
-- often used with aggregate functions
-- ex. SUM(), MAX(), MIN(), AVG(), COUNT()

SELECT SUM(amount), customer_id
FROM transactions
GROUP BY customer_id;

SELECT MAX(amount), customer_id
FROM transactions
GROUP BY customer_id;

SELECT MIN(amount), customer_id
FROM transactions
GROUP BY customer_id;

SELECT AVG(amount), customer_id
FROM transactions
GROUP BY customer_id;

-- Importants ***
SELECT COUNT(amount), customer_id
FROM transactions
GROUP BY customer_id
HAVING COUNT(amount) > 1 AND customer_id IS NOT NULL;
-- GROUP BY = Used HAVING, not WHERE
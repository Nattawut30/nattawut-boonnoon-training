-- GROUP BY = aggregate all rows by a specific column
-- often used with aggregate functions
-- ex. SUM(), MAX(), MIN(), AVG(), COUNT()

SELECT SUM(amount), order_date
FROM transactions
GROUP BY order_date;

SELECT MAX(amount), order_date
FROM transactions
GROUP BY order_date;

SELECT MIN(amount), order_date
FROM transactions
GROUP BY order_date;

SELECT AVG(amount), order_date
FROM transactions
GROUP BY order_date;

SELECT COUNT(amount), order_date
FROM transactions
GROUP BY order_date;
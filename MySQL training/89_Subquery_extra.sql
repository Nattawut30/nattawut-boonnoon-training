-- Subquery
-- a query within another query
-- query(subquery)

SELECT first_name, last_name
FROM customers
WHERE customer_id NOT IN
(SELECT DISTINCT customer_id
FROM transactions
WHERE customer_id IS NOT NULL);
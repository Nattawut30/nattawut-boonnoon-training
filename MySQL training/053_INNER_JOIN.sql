SELECT *
FROM transactions INNER JOIN customers
ON transactions.customer_id = customers.customer_id;
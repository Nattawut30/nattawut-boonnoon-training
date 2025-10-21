SELECT *
FROM transactions RIGHT JOIN customers
ON transactions.customer_id = customers.customer_id;
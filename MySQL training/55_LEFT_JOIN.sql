SELECT *
FROM transactions LEFT JOIN customers
ON transactions.customer_id = customers.customer_id;
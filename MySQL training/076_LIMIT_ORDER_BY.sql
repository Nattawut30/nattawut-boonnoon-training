-- LIMIT clause is used to limiit the number of records
-- Useful If you're working with a lot of data
-- Can be used to display a large data on pages (pagination)
SELECT * FROM customers
ORDER BY last_name DESC LIMIT 1;
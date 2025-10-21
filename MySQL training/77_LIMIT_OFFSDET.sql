-- LIMIT clause is used to limiit the number of records
-- Useful If you're working with a lot of data
-- Can be used to display a large data on pages (pagination)
SELECT * FROM customers
LIMIT 1, 1;
-- the first number is a offset
-- limit to 1 record (second number)
-- used for large data set
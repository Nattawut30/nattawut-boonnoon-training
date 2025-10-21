-- SELF JOIN
-- join another copy of a table to itselg
-- used to compare rows of the same table
-- helps to display a heirachy of data

SELECT a.customer_id, a.first_name, a.last_name,
	   CONCAT(b.first_name," ", b.last_name) AS "last_name"
FROM customers AS a
INNER JOIN customers AS b
ON a.referral_id = b.customer_id;
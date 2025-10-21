-- Stored procedure = is prepare SQL code that you can save
-- Great if there's a query that you write it often

DELIMITER $$
CREATE PROCEDURE find_customer(IN id INT)
BEGIN
	SELECT *
    FROM customers
    WHERE customer_id = id;
END $$
DELIMITER ;
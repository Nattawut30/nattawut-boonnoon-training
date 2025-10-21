-- Stored procedure = is prepare SQL code that you can save
-- Great if there's a query that you write it often
-- Used the word "CALL" to run the procedure

DELIMITER $$
CREATE PROCEDURE dig_customer(IN f_name VARCHAR(50),
							  IN l_name VARCHAR(50))
BEGIN
	SELECT *
	FROM customers
	WHERE first_name = f_name AND last_name = l_name;
END $$
DELIMITER ;
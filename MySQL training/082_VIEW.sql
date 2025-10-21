-- Views
-- a virtual table based on the results-set of an SQL statement
-- The fileds in a view are fields from one or more real tables in the database
-- They're not real tables, but can be interacted with as if they were

CREATE VIEW employee_attendance AS
SELECT first_name, last_name
FROM employees;
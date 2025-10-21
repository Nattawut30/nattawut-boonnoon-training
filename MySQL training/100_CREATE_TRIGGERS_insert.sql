-- Trigger. = When an event occurs, does something
-- ex. (INSERT, UPDATE, DELETE)
-- Checks data, handles errors, auditing tables

CREATE TRIGGER after_salary_insert
AFTER INSERT ON employees
FOR EACH ROW
UPDATE expenses
SET expense_total = expense_total + NEW.salary
WHERE expense_name = "salaries";
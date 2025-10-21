-- Trigger. = When an event occurs, does something
-- ex. (INSERT, UPDATE, DELETE)
-- Checks data, handles errors, auditing tables

CREATE TRIGGER after_salary_delete
AFTER DELETE ON employees
FOR EACH ROW
UPDATE expenses
SET expense_total = expense_total - OLD.salary
WHERE expense_name = "salaries";

-- basically, They're automations on the query.
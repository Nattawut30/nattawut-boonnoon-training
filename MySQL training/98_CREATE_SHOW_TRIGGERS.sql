-- Trigger. = When an event occurs, does something
-- ex. (INSERT, UPDATE, DELETE)
-- Checks data, handles errors, auditing tables

CREATE TRIGGER before_hourly_pay_update
BEFORE UPDATE ON employees
FOR EACH ROW
SET NEW.salary = (NEW.hourly_pay * 2080);

-- Show the triggers that we created
SHOW TRIGGERS;
ALTER TABLE employees
ADD CONSTRAINT chk_hourly_pay CHECK (hourly_pay >= 10.00);
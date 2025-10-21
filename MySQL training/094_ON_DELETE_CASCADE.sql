-- ON DELETE SET NULL = When a FK is deleted, replace FK with NULL
-- ON DELETE CASCADE = When a FK is deleted, delete row


ALTER TABLE transactions
ADD CONSTRAINT fk_transactions_id
FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
ON DELETE CASCADE;
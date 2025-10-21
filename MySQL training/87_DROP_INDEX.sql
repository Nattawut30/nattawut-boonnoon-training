-- INDEX (BTree data structure)
-- Indexes are used to find values within a specific column more quickly
-- MySQL normally searches "sequentially" through a column
-- The longer the column, the more expensive the operations is
-- UPDATE takes more time, SELECT takes less time.

ALTER TABLE customers
DROP INDEX last_name_idx;

SHOW INDEXES FROM customers;
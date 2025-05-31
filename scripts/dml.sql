/*
Data Manipulation Language (DML)
- used for inserting data
- Modify existing records
- Remove data from tables
-- no of columns must match the number of values
*/
INSERT INTO customers(id,first_name, country,score)
VALUES(6,'Anna', 'Kenya',NULL),
(7, "Kim",NULL, 80);

-- change score of customer 6 to 0
/* For update do not forget the filer condition 
unless you want it to filter everything
*/
UPDATE customers
SET score = 0
WHERE id = 6;

-- Remove rows
-- Also remember to include where all you delete everything
DELETE FROM customers
WHERE score IS NULL;

-- truncate clears the whole table faster than DELETE
TRUNCATE TABLE persons;

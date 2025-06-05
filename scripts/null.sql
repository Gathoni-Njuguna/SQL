/*
To replace values - ISNULL, COALESCE AND NULLIF(converts a value to a null)
To check for nulls - IS NULL, IS NOT NULL
IS NULL returns true if value is null  and false if not null
-- IFNULL(expr, replacement): Returns replacement if expr is NULL, else expr
-- Example: SELECT IFNULL(salary, 0) FROM employees;

-- COALESCE(val1, val2,...): Returns first non-NULL value in the list
-- Example: SELECT COALESCE(phone, mobile, email, 'No contact') FROM users;
-- used across databases
-- NULLIF(expr1, expr2): Returns NULL if expr1 = expr2, else returns expr1
-- Example: SELECT NULLIF(discount, 0) FROM orders;

-- IS NULL: Checks if value is NULL (use for comparisons)
-- Example: SELECT * FROM products WHERE stock IS NULL;

-- IS NOT NULL: Checks if value is not NULL
-- Example: SELECT * FROM customers WHERE email IS NOT NULL;
ISNULL - replaces a Null with a specific value, limited to two values
-- ISNULL(expr): Returns 1 if expr is NULL, 0 otherwise (different from SQL Server's ISNULL)
*/

*/
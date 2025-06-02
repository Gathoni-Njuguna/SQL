/**
When you need to combine rows in tables use set operators
UNION, UNION ALL, EXCEPT
-- union removes duplicates from the combine set
-- union all faster than union as it does not sort data or remove duplicates. It returns everything
-- except returns all distinct rows from the first query that are not in  the second query
-- The INTERSECT operator returns only the rows that are common to two SELECT queries
EXCEPT/INTERSECT  not available in MySQL
-ORDER BY only used at the end of the query
- number of columns have to be the same for the queries
-- The first table is responsible for giving names to the set so give aliases to this table
*/
SELECT firstname , lastname
FROM customers
UNION
SELECT firstname , lastname
FROM employees;

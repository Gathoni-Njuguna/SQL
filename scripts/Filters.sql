/*
 1. Comparison Operators
        - =, <>, >, >=, <, <=
     2. Logical Operators
        - AND, OR, NOT
     3. Range Filtering
        - BETWEEN
     4. Set Filtering
        - IN
     5. Pattern Matching
        - LIKE
*/
-- Retrieve all customers who are either from the USA or do not have a score greater than 500.
/** 
AND - both conditions are true
OR - either one of the condition is true
*/
SELECT *
FROM customers
WHERE country = 'USA' OR score < 500;
-- using And
SELECT *
FROM customers
WHERE country = 'USA' AND score < 500;

 -- Retrieve all customers who are not from the USA
 /* != and <> does the same
 - can also use Not
 */
 
 SELECT *
FROM customers
WHERE country <> 'USA';
 SELECT *
FROM customers
WHERE country !=  'USA';
SELECT *
FROM customers
WHERE NOT country = 'USA';

/** 
BETWEEN
checks for a range
**/
SELECT *
FROM customers
WHERE score BETWEEN 200 AND 500;
/* Membership operators
in - where you want to filter in a list or values from the same column
*/
SELECT *
FROM
customers 
WHERE country IN ("USA", "UK");

/** 
LIKE - check for a pattern
% - anything
_ - one character/number
*/
-- first name starting with an M
SELECT *
FROM customers
WHERE first_name LIKE 'M%';
-- name ends with an n
SELECT *
FROM customers
WHERE first_name LIKE '%n';
-- name contains an r
SELECT *
FROM customers
WHERE first_name LIKE '%r%';
-- name contains an r on the 3rd character
SELECT *
FROM customers
WHERE first_name LIKE '--r%';
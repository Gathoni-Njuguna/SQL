-- retrieve all the customers
/*
- Avoid using (*) especially in large datasets
  - If you have to use limit to not affect performance
  -SQL is not case sensitive but for best practice the keywords are usually in upper case
  - To filter our data use *WHERE* clause to return just what satisfies our condition
  - ORDER BY is used to sort the data with ASC being the default and the alternative being DESC
  More content: https://wooblygeek.hashnode.dev/understanding-the-select-statement-in-sql
  */
  SELECT * FROM customers;
  SELECT * FROM orders;
  -- select particular columns
  SELECT first_name, score
  FROM customers;
  
  -- using where clause
SELECT first_name, score
FROM customers
WHERE score > 400;

-- Retrieve customers from Germany
SELECT *
FROM customers
WHERE country = 'GERMANY';

-- sort data
SELECT * 
FROM customers
ORDER BY score DESC, first_name;

-- grouping data
-- Find total scores for each country
SELECT country, SUM(score) AS total_scores
FROM customers
GROUP BY country;
-- return several customers with group
SELECT country, first_name, SUM(score) AS total_scores
FROM customers
GROUP BY country, first_name;
-- filtering the results after grouping
SELECT country, first_name, SUM(score) AS total_scores
FROM customers
GROUP BY country, first_name
HAVING total_scores <> 0;
-- find average
SELECT country,  avg(score) AS avg_scores
FROM customers
GROUP BY country;


/* Calculate the average score for each country 
   considering only customers with a score not equal to 0
   and return only those countries with an average score greater than 430
   and sort the results by the highest average score first.
   */
   SELECT country, avg(score)avg_score
   FROM customers
   WHERE score > 0
   group by country
   HAVING avg_score > 500;
   
   -- return unique countries
   SELECT DISTINCT country
   FROM customers;
   
   -- restrict rows returned
   SELECT *
   FROM customers
   ORDER BY score DESC -- try without DESC
   LIMIT 3;
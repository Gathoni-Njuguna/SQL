/**
JOINS
combining tables
- We use a common/ matching column between the tablles
-- https://wooblygeek.hashnode.dev/joins-in-sql-bridging-the-gap-between-data-tables
TYPES OF JOINS
INNER JOIN - returns all values that are similar in both tables(default type)
LEFT JOIN - returns all the data from the first table(left) then matching data from the right table
RIGHT JOIN - returns all from the second table and only matching data from the first table(rarely used)
FULL JOIN NOT supported in MySQL but returns all the values from all the tables
*/
SELECT *
FROM customers cu
INNER JOIN orders od
ON od.customer_id = cu.id;
-- left joim
-- all customers including those without orders
-- order of tables matter
SELECT *
FROM customers cu
LEFT JOIN orders od
ON od.customer_id = cu.id;


-- find customers with orders without using inner joim 
SELECT *
FROM customers cu
LEFT JOIN orders od
ON od.customer_id = cu.id
WHERE  od.order_id IS NOT NULL;
--  cross join
-- combines all possible combinations of joins
SELECT *
FROM customers cu
CROSS JOIN orders od;
SELECT o.orderid, o.sales , c.firstname AS customers_first_name,  c.lastname AS customers_last_name, product, price, e.firstname AS  employeefirstname
, e.lastname AS employeelastname
FROM orders o
LEFT JOIN customers c
ON c.customerid = o.customerid
LEFT JOIN products p
ON o.productid = p.productid
LEFT JOIN employees e
ON o.salespersonid = e.employeeid;
SELECT *
from products;
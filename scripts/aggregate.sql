/*
count - just the numbers
Sum - total
Avg - to find average
Max - highest
Min - lowest
-- if you use group by you can break the summation to the granylar level
*/
-- total sales
SELECT SUM(sales) total_sales,
MAX(sales)highest_sales, MIN(sales) lowest_sales, COUNT(sales) numberofsales, AVG(sales)avg_sales
from orders;
-- Grouped
SELECT customer_id,SUM(sales) total_sales,
MAX(sales)highest_sales, MIN(sales) lowest_sales, COUNT(sales) numberofsales, AVG(sales)avg_sales
from orders
group by customer_id;
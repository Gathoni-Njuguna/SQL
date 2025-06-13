/** WINDOWS FUNCTIONS
WIndow Function - Perform calculation for example Aggregates - SUM, AVG
                        Rank functions - Row_number, Rank, Dense_rank, CUme_dist, Percent_rank, NTILE
                        Value - LEAD, LAG, FIRST_VALUE, LAST_VALUE
Function Expression - Arguments you pass to a function
RANK() - empty, Column AVG(sales)
OVER clause - define the windows function
- partition clause, Order, Frame
PARTITION BY - divide the entire dataset into partitions or groups
              - If not specified the entire dataset is considered as one Window
ORDER BY - sorts data within a window
 RANK() -Assigns a unique rank to rows within a partition based on the ORDER BY clause.
        -Ties get the same rank, and the next rank(s) are skipped.
DENSE_RANK() - Similar to RANK() but does not skip the next rank after ties.
			- Ties still receive the same rank.
ROW_NUMBER() - Assigns a unique sequential number to each row within a partition.
			- No ties — every row gets a unique number even if values are identical.
CUME_DIST() (Cumulative Distribution) - Calculates the relative position of a row in a partition (from 0 to 1).
PERCENT_RANK() - Similar to CUME_DIST() but uses the rank position rather than count.
-- FRAME CLAUSE
FRAME CLAUSE - used within window functions to define the set of rows over which a window function operates.
              - Controls the sliding window over rows — not just by partition, but how many rows before or after to include.
UNBOUNDED FOLLOWING - The last possible row within a window
N-PRECEDING - the n-th row befor the current row
- FRAME clause should always have an ORDER BY
AVG(sales) OVER (partition by category ORDER BY orderdate ROWS UNBOUNDED PRECEEDING)
Limitations of windows functions:
	- Can be used only in select clause and order by clause
	- Nesting of window functions is not allowed
	- SQL execute window function after the WHERE clause
	- Window can be used with group by clause only if similar columns are used
*/
-- total sales across all orders
SELECT order_id, order_date,
SUM(sales) OVER()total_sales
FROM orders;

-- total sales across all orders and for each customer
SELECT orderid, orderdate, customerid,
SUM(sales) OVER()gross_sales,
SUM(sales) OVER(PARTITION BY customerid)total_sales
FROM orders;


-- rank
SELECT orderid, orderdate,
RANK() OVER( ORDER BY sales DESC)total_sales
FROM orders;

-- frame clause
SELECT orderid,orderdate, AVG(sales) OVER ( ORDER BY MONTH(orderdate) ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING)orders_window
FROM orders;
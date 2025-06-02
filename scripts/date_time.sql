/**
They vary depending on the SQL flavor you are using 
GETDATE - returns current day
TODAY (these two are not available in MySQL
which uses CURDATE, NOW,SYSDATE
	*DAY() -returns day from the date
	*MONTH() -  returns month from the date
	*YEAR() - returns year from the date
    *DATEPART() - returns a specific part - week, quarter, etc(not available in MysQL)
    DATEPART("mmm", creationtime)
    * DAYOFWEEK() which returns 1 for Sunday through 7 for Saturday
    *WEEKDAY() - Returns 0 for Monday, 1 for Tuesday, ..., 6 for Sunday
    *WEEKOFYEAR()  Returns the calendar week of the year returns 1-53
    *DATETRUNC is a date/time function that truncates (cuts off) a timestamp to a specified precision level(not available in MySQL)
    *DATEFORMAT() Works like datepart in mysql. Here are some of the specifiers used:
    %Y	Year, 4 digits	2023
%y	Year, 2 digits	23
%d	Day of month (00-31)	01, 02, ..., 31
%e	Day of month (0-31)	1, 2, ..., 31
%W	Weekday name	Sunday, Monday, ..., Saturday
%a	Abbreviated weekday	Sun, Mon, ..., Sat
%H	Hour (00-23)	00, 01, ..., 23
%h	Hour (01-12)	01, 02, ..., 12
%i	Minutes (00-59)	00, 01, ..., 59
%S	Seconds (00-59)	00, 01, ..., 59
%p	AM or PM	AM, PM

*FORMAT() 
FORMAT(value, format)
* CAST() -Converts a value from one data type to another.
similar to CONVERT() which is more specific to MySQL
Use CAST when:

You want standard SQL syntax for portability

Working in code that might need to run on other database systems
 ISDATE() - checks if a value is a date   
*/
SELECT NOW()today, creationtime, DAY(creationtime)daytime, MONTH(creationtime)monthcreated,
YEAR(creationtime)yearcreated , quarter(creationtime)quartercreated, week(creationtime)weetime
, weekday(creationtime)weekdayct, hour(creationtime)hourct,dayofweek(creationtime)
from orders;


--- how many orders were placed each month
SELECT MONTHNAME(creationtime)monthorder, COUNT(*)orders
from orders
group by monthorder;
 SELECT DATE_FORMAT(creationtime, '%b') monthorder, COUNT(*)orders
from orders
group by monthorder;

SELECT DATE_FORMAT('2023-05-15 14:30:45', '%b %d, %Y %h:%i %p')entrire_format;
-- extract parts
SELECt
 EXTRACT(day from creationtime)daycreated from orders;
 -- convert data type
 SELECT CONVERT('2023-05-15', DATETIME)dt_convert, CAST('2023-05-15' AS DATETIME)dt_cast, CAST('123' AS SIGNED)cast_int_var;
SELECT DATE_ADD(creationtime, INTERVAL 2 YEAR)2_yrs, DATE_ADD(creationtime, INTERVAL 3 MONTH)month_int
, DATE_ADD(creationtime, INTERVAL -12 DAY)days_before
FROM orders;

-- subtract between dates
SELECT DATEDIFF( shipdate, orderdate)days_to_ship
from orders;

-- find the number of days between each order and the previous order
SELECT orderid, orderdate as currentorderdate,
LAG(orderdate) OVER(ORDER BY orderdate)peviousdate,
DATEDIFF(orderdate , LAG(orderdate) OVER(ORDER BY orderdate))
 from orders;
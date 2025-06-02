/*
-- https://wooblygeek.hashnode.dev/sql-data-cleaning
ROW LEVEL FUNCTIONS
- functions are inbuild sql codes
- single row functiom - lower
- multi row eg SUM
STRING FUNCTIONS
* CONCAT - combines multi values into one FIRST NAME || LAST NAME
* CONCAT_WS (Concatenate With Separator)
Joins strings together with a specified separator

Syntax: CONCAT_WS(separator, string1, string2, ..., stringN)
*LOWER & UPPER - converts to lower case or upper case
*TRIM - removes leading and trailing spaces
*REPLACE - replaces a specific Character
    - REPLACE(string, from_substring, to_substring)
*LEN - counts number of characters
*LEFT - extracts specific number of characters from the beginning of the values
   LEFT('string', no_of_characters)
*RIGHT - extracts specific number of characters from the end
*SUBSTRING - Extract specific part
  SUBSTRING(value,start,length)
  
  NUMBERS FUNCTIONS
  *Round - to round off numbers
  *ABS - converts all to positive numbers
*/

-- join first and last name
SELECT CONCAT(firstname," ", lastname)full_name, country
FROM customers;
-- concat with specific_delimiter
SELECT CONCAT_WS("_", firstname, lastname)full_name, country
FROM customers;
-- change first name to uppercase and last name to lowercase
SELECT UPPER(firstname) , LOWER(lastname)
FROM customers;

-- replace
SELECT REPLACE('+254 -724-0006-7890', '-', ' ') AS phone;
-- round
SELECT
3.516, ROUND(3.156,2)round_2,
ROUND(3.156,1) round_1,
ROUND(3.156,0)round_0;


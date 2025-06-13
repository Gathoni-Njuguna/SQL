/*
case - start of logic
when - condition to be evaluated
then - if the condition is true show
End - end of logic
*/
SELECT first_name, 
CASE WHEN score > 500 THEN 'pass'
WHEN score > 350 THEN 'Average'
ELSE 'Fail'
END as pass
from customers;
/*
Data definition language
- to create a new table
- to alter table structures
- To remove tables
for best practise use if NOT EXIST to avoid recreation once we rerun the query
*/

/* Create a new table called persons 
   with columns: id, person_name, birth_date, and phone */
   CREATE TABLE IF NOT EXISTS persons(
   id INT primary KEY,
   person_name VARCHAR(50) NOT NULL,
   birth_date DATE,
   phone__number VARCHAR(15)
   );
   
   -- to change something on the table
   -- add column email
   
ALTER TABLE persons
ADD email VARCHAR(50) NOT NULL;

-- drop
-- delete the table persons
/* 
quite risky because are removing it completely
*/
ALTER TABLE persons
DROP COLUMN phone;
DROP TABLE persons;

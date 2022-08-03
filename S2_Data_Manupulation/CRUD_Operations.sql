CREATE DATABASE CRUD_PRACTICE;
CREATE TABLE sales(
  Id SERIAL PRIMARY KEY,
  date_created DATE DEFAULT CURRENT_DATE,
  date_fulfilled DATE ,
  customer_name VARCHAR(250) NOT NULL,
  product_name VARCHAR(250) NOT NULL,
  volume NUMERIC(10,3) NOT NULL CHECK (volume >= 0),
  is_recurring BOOLEAN DEFAULT FALSE,
  is_disputed BOOLEAN DEFAULT FALSE
);

-- Inserting a singe row to a column
INSERT INTO sales (customer_name , product_name ,volume , is_recurring) VALUES ('Mohmmadreza Jafari' , 'Postgresql_license' , 500.25 , TRUE);
-- Inserting multiple rows to a column

INSERT INTO sales (customer_name , product_name ,volume , is_recurring , date_fulfilled , is_disputed)
VALUES ('Mohmmadreza Jafari' , 'Postgresql_license' , 500.25 , TRUE , '2022-08-03' , FALSE) , ('John Does' , 'MYSQL_license' , 350.25 , FALSE , '2022-08-03' , TRUE);

-- Update Data By Id

UPDATE sales  SET product_name = 'sql_server_license' , volume = volume * 2 WHERE Id = 2;
ALTER TABLE sales
   ALTER COLUMN product_name SET DATA TYPE CHAR(200);

-- Delete Data From TABLE

DELETE FROM sales WHERE Id = 2;

DELETE * FROM sales

DROP TABLE sales;

-- * SELECT data from table

-- select all data from a table
SELECT * FROM sales;
-- select a specefic column from table
SELECT product_name FROM sales;

-- select all data from table by a condition
SELECT * FROM sales WHERE id =2;
-- select  specefic columns from table by a condition
SELECT product_name FROM sales WHERE id=2;
SELECT product_name , date_fulfilled FROM sales WHERE id=2;
SELECT product_name FROM sales WHERE customer_name='Mohammadreza Jafari';
-- AS is a key word to set a alias for a column to show it as the name we choose in query result
SELECT product_name ,  volume AS price FROM sales WHERE customer_name='Mohammadreza Jafari';
-- also we are able to do some calculation or any kind of operation in a column data and return the result data
SELECT product_name ,  volume / 100 AS price FROM sales WHERE customer_name='Mohammadreza Jafari';

SELECT product_name FROM sales WHERE volume > 2000;
SELECT product_name FROM sales WHERE volume > 2000 OR volume <= 1000 ;
SELECT product_name FROM sales WHERE volume > 2000 AND volume != 1000 ;
SELECT product_name FROM sales WHERE volume > 2000 AND volume IS NOT NULL ;
SELECT * FROM sales WHERE  date_created < '2022-08-03' AND date_created > '2022-05-3'; -- below query work as well
SELECT * FROM sales WHERE  date_created  BETWEEN '2022-8-03' AND '2022-05-05';

-- sub queries

SELECT customer_name FROM(SELECT * FROM sales WHERE volume > 1000) AS base_result;

--- view based querires

CREATE VIEW base_result  AS SELECT * FROM sales WHERE volume > 1000;
-- SELECT customer_name FROM(SELECT * FROM sales WHERE volume > 1001) AS base_result; we'v uses sub queries there
SELECT customer_name FROM base_result; -- we'v uses view in this query

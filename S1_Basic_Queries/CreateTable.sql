-- for using enums in PostgresSql we should create a cutome type
CREATE TYPE employed_status AS ENUM('employed' , 'self-employed' , 'unemployed');
CREATE TABLE users(
  first_name VARCHAR(150),
  last_name VARCHAR(150),
  salary  FLOAT,
  -- current_status ENUM('employed' , 'self-employed' , 'unemployed'), => this wont work in psql
  current_status employed_status
);
CREATE TABLE employers(
  company_name VARCHAR(250),
  company_address VARCHAR(300),
  yearly_revenue NUMERIC(5,2), -- Allowed 123.45 , Not Allowed 12345.678
  is_hiring BOOLEAN
);
CREATE TABLE conversations(
  user_name VARCHAR(100),
  employer_name VARCHAR(150),
  message TEXT,
  date_sent TIMESTAMP -- will also send hour and minut
);

-- Constraints are controllers for a column value; like ake it null able or Not

CREATE TABLE users(
  first_name VARCHAR(150) NOT NULL,
  last_name VARCHAR(150) NOT NULL,
  salary  FLOAT(7,2), -- it is null able cause i havnt add NOT NULL constraint,
  -- current_status ENUM('employed' , 'self-employed' , 'unemployed'), => this wont work in psql
  yearly_salary INT CHECK ( yearly_salary > 0  AND yearly_salary < 1000000), -- check constraint will apply some filters to filed , in this example yearly_salary must be more than 0 and less tna 1000000
  current_status employed_status NOT NULL
);

-- Id is a nessecery field in each column

CREATE TABLE users (
  --Id INT PRIMARY KEY(AUTO_INCREMENT), -- my sql syntax
  Id SERIAL  PRIMARY KEY ,
  first_name VARCHAR(150) NOT NULL,
  last_name VARCHAR(150) NOT NULL,
  salary  FLOAT(7,2),
  yearly_salary INT CHECK ( yearly_salary > 0  AND yearly_salary < 1000000), -- check constraint will apply some filters to filed , in this example yearly_salary must be more than 0 and less tna 1000000,
  current_status employed_status NOT NULL,
  -- Generated Columns are columns like full_name field that wont save to our db but jut combine two filds like first_name and last_name or do some outher query an dreturn a value
  full_name VARCHAR(300) GENERATED ALWAYS AS (CONCAT(first_name, ' ' ,last_name)), -- Postgres syntax
);

CREATE TABLE employers(
  Id SERIAL PRIMARY KEY,
  company_name VARCHAR(250),
  company_address VARCHAR(300),
  yearly_revenue NUMERIC(5,2),
  is_hiring BOOLEAN
);
CREATE TABLE conversations(
  Id SERIAL PRIMARY KEY,
  user_id INT NOT NULL , --  relation to user column
  employer_id INT NOT NULL, -- relation to  employer column
  message TEXT,
  date_sent TIMESTAMP
);

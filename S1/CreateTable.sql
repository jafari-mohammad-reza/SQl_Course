-- for using enums in PostgresSql we should create a cutome type
CREATE TYPE employed_status AS ENUM('employed' , 'self-employed' , 'unemployed');
CREATE TABLE users(
  Id  INT,
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

--in ALTER command you are able to update as many filed as you want

ALTER TABLE employers
ALTER COLUMN yearly_revenue SET DATA TYPE FLOAT(5,2);


-- MODIDY is uses in my sql and ALTER COLUMN works in postgress

ALTER TABLE users
MODIFY COLUMN first_name SET CHAR(100);


ALTER TABLE users
ALTER COLUMN full_name SET DATA TYPE VARCHAR(300) last_name SET DATA TYPE CHAR(100);


-- update to add a constraint

ALTER TABLE users
ADD CONSTRAINT yearly_slary_checked CHECK (yearly_slary > 0 AND yearly_slary < 1000000);

-- in abow line the (yearly_slary_checked) is the name we give to out constraint (Condition)

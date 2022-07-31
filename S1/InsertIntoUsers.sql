-- by specifing 'VALUES'  key word we will  insert some new data
INSERT INTO users VALUES('Mohammadreza' , 'Jafari' , 0 , 'unemployed');-- => this is inserting by order that will be fine in minimal and small table like user table
INSERT INTO users (salary , first_name , current_status , last_name) VALUES(0 ,  'Mohamamdreza' , 'unemployed' , "Jafari");

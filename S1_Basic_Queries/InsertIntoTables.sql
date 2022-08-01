-- by specifing 'VALUES'  key word we will  insert some new data
INSERT INTO users VALUES('Mohammadreza' , 'Jafari' , 0 , 'unemployed');-- => this is inserting by order that will be fine in minimal and small table like user table
INSERT INTO users (salary , first_name , current_status , last_name) VALUES(0 ,  'Mohamamdreza' , 'unemployed' , 'Jafari');
INSERT INTO employers (company_name , company_address , yearly_revenue , is_hiring) VALUES ('NodeJs Developers' ,'Tehran , Iran' , 34.200 , TRUE);
INSERT INTO conversations (user_name , employer_name , messge , date_sent) VALUES ('Mohammadreza Jafari', 'NodeJs Developers', 'We want to have collabration with you.' ,'2022-08-01 20:37');


-- Inserting empty strings or 0 as numeric value can cost some damages to our database data analyse so web should use NULL for empty VALUES

INSERT INTO user VALUES('Mohammadreza' , 'Jafari' , NULL , 'unemployed');

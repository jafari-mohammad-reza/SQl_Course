CREATE DATABASE one_to_one_example;
CREATE TABLE teacher (
  Id SERIAL PRIMARY KEY,
    first_name VARCHAR(250) NOT NULL,
    last_name VARCHAR(250) NOT NULL,
    age INT NOT NULL
);


CREATE TABLE classRoom (
    Id SERIAL PRIMARY KEY  ,
    title VARCHAR(100) UNIQUE NOT NULL,
    teacher_id INT NOT NULL
);




INSERT INTO teacher (first_name , last_name , age) VALUES ('John' , 'Doe' , 10000);
INSERT INTO teacher  (first_name , last_name , age) VALUES ('Maxillian' , 'Scheartzmiller' , 24);

INSERT INTO classRoom (title , teacher) VALUES ('NodeJs' , 3);
INSERT INTO classRoom (title , teacher) VALUES ('Sql' , 4);

SELECT class.title , teacher.first_name FROM classRoom AS class INNER JOIN teacher AS teacher  ON class.teacher =  teacher.id;

SELECT * FROM classRoom;

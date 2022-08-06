-- Active: 1659629086562@@172.18.0.3@5432@sqlCourse_db
CREATE TABLE students (
    Id INT PRIMARY KEY(AUTO_INCREMENT),
    first_name VARCHAR(250) NOT NULL,
    last_name VARCHAR(250) NOT NULL,
    age INT NOT NULL CHECK (age > 0 AND age < 19),
    is_atlestic BOOLEAN DEFAULT FALSE,
);
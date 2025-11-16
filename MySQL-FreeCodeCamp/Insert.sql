/*INSERTING DATA*/
use giraffe;
show databases;

-- Inserting Data Into Tables

INSERT INTO student(student_id, name, major) VALUES 
(1, 'Jack', 'Biology'),
(2, 'Kate', 'Sociology'),
(3, 'Claire', 'English'),
(4, 'Jack', 'Biology'),
(5, 'Mike', 'Comp. Sci.');

SELECT * FROM student;
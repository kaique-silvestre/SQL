/*updating and deleting*/

-- Deleting

DELETE FROM student; -- Deletes all rows

-- Deletes everything specified by the WHERE clause
DELETE FROM student
WHERE major = 'Biology';

-- updating

-- UPDATES wvery row if we do not define WHERE clause 
UPDATE student
SET major = NULL;

-- Updates only specified roews by where clause
UPDATE student
SET Major = 'History'
WHERE student_id in (1, 2);

SELECT * FROM student;

SELECT * FROM country
WHERE name LIKE 'Br%';


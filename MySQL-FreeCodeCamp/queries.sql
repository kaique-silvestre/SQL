-- Find all employees ordened by sex then name
SELECT * FROM Employee
ORDER BY sex, first_name, last_name;

-- Find the first 5 employees in the table
SELECT * FROM Employee
ORDER BY emp_id
LIMIT 5;

-- Find the first and the last names of all employees
SELECT first_name, last_name FROM Employee
ORDER BY first_name, last_name;

-- Find the forname and surnames of all employees
SELECT first_name AS forename, last_name AS surname FROM Employee;

-- Find out all the different genders
SELECT DISTINCT(sex) FROM Employee;

-- Find the Number os employees 
SELECT COUNT(*) FROM employee;

-- Find the number of female employees born after 1970
SELECT COUNT(*) FROM Employee
WHERE sex = 'F' AND birth_date > '1970-01-01';

-- Find the average of all employee's salaries
SELECT AVG(salary) as 'Average Employee\'s Salary' FROM Employee;

-- Find the average of all employee's salaries who are male
SELECT AVG(salary) FROM Employee
WHERE sex = 'M';

-- Find the sum of all employyees salary
SELECT SUM(salary) FROM Employee;

-- Find out hoe many males and females there are
SELECT COUNT(sex), sex FROM Employee
GROUP BY sex;

-- Find the total sales of each salesman 
SELECT SUM(total_sales), emp_id FROM works_with
GROUP BY emp_id;
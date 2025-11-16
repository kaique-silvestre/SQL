-- Nested Queries

-- Find names of all employees who have sold over 30,000 to a single client

SELECT employee.emp_id, employee.first_name, employee.last_name
FROM employee
WHERE employee.emp_id IN (
	SELECT emp_id 
	FROM works_with
	WHERE total_sales > 30000
);
/*
Find all clients who are handled by the branch that michael scott manages 
Assume you know michael's ID
*/

SELECT client.client_id, client.client_name
FROM client
WHERE client.branch_id IN (
	SELECT branch.branch_id
	FROM branch
	WHERE branch.mgr_id = 102
);

-- Assuming I don't know Michael's ID
SELECT client_id, client_name
FROM client
WHERE client.branch_id IN (
	SELECT branch.branch_id
	FROM branch
	WHERE branch.mgr_id IN (
		SELECT employee.emp_id
		FROM employee
		WHERE employee.first_name = 'Michael' AND employee.last_name = "Scott"
));








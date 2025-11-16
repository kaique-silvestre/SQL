-- JOINS

use company;

INSERT INTO branch VALUES(4, 'Buffalo', NULL, NULL);


SELECT employee.emp_id, employee.first_name, employee.last_name, branch.branch_name
FROM employee -- Seleciona a Tabela 01
JOIN branch -- Seleciona a tabela a ser juntada 
ON employee.emp_id = branch.mgr_id; -- Define as colunas em comum


CREATE TABLE departments(department_id INT primary key,department_name VARCHAR (30) not null);
INSERT INTO departments VALUES(1,'IT'),(2,'HR'),(3,'Finance'),(4,'Marketting');
SELECT * FROM departments;

CREATE TABLE employees (emp_id INT PRIMARY KEY,emp_name VARCHAR(100) NOT NULL,department_id 
INT REFERENCES departments(department_id),salary INT NOT NULL,manager_id 
INT REFERENCES employees(emp_id));
INSERT INTO employees VALUES(1, 'Abitha' , 1 , 80000  ,NULL),(2, 'Priya', 1, 75000, 1),(3, 'Karthi', 1, 90000, 1),
(4, 'Meena', 2, 55000, NULL),(5, 'Suresh', 2, 58000, 4),(6, 'Divya', 2, 62000, 4),
(7, 'Rahul', 3, 95000, NULL),(8, 'Anu', 3, 88000, 7),(9, 'Vijay', 3, 72000, 7),
(10, 'Lakshmi', 3, 60000, 7);
SELECT * FROM employees;

SELECT e.emp_name, e.salary, d.department_name
FROM employees e JOIN departments d ON e.department_id = d.department_id
WHERE e.salary > (SELECT AVG(salary) FROM employees WHERE department_id = e.department_id);
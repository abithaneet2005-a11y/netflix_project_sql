-- Q-2
CREATE TABLE departments(department_id int primary key,department_name varchar(30)not null);

INSERT INTO departments(department_id,department_name) VALUES (1,'IT'),(2,'HR'),(3,'Finance')
,(4,'Marketting');

CREATE TABLE employees(emp_id int primary key,emp_name varchar(30) not null,department_id int references
departments(department_id),salary int  not null ,manager_id int references employees(emp_id));

INSERT INTO employees VALUES (1,'Abitha',1,80000,null),(2,'Manibharathi',1,75000,1),
(3,'Archana',2,60000,1),(4,'vimala',2,90000,1),(5,'Dhanalaksmi',3,68000,3);

SELECT e.emp_name,e.salary,d.department_name FROM  employees e
JOIN departments d ON e.department_id=d.department_id
WHERE e. salary=(select max(salary)from employees where department_id=e.department_id);
select* from departments;
select*from employees;
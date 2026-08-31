-- CREATE TABLE departments(department_id int PRIMARY KEY,department_name varchar(50));

-- CREATE TABLE employees(emp_id int PRIMARY KEY,emp_name varchar(50)
-- ,department_id varchar(30) ,salary DECIMAL(10,2),FOREIGN KEY(department_id)
--  REFERENCES departments(department_id));

-- INSERT INTO employees values(1,'abitha','2871',50000),(2,'dhanam','2871',51000)
-- ,(3,'nivi','2871',52000),(4,'mani','1234',53000),(5,'archana','1234',54000),
-- (6,'vimala','1234',56000),(7,'kaviya','2824',55000),(8,'ramya','2824',56000),
-- (9,'purushoth','2824',57000),(10,'gokul','3232',58000);

-- INSERT INTO departments values(2871,'CSE'),(3232,'MECH'),(1234,'ECE'),(2,'EEE');
-- select * from employees;
-- select * from departments;


CREATE TABLE categories (category_id INT PRIMARY KEY,category_name VARCHAR(50));

CREATE TABLE products (product_id INT PRIMARY KEY,product_name VARCHAR(100),
category_id INT,price DECIMAL(10,2),FOREIGN KEY (category_id) REFERENCES categories(category_id));

INSERT INTO categories VALUES(1, 'Electronics'),(2, 'Furniture'),(3, 'Clothing');

INSERT INTO products VALUES
(101, 'Laptop', 1, 55000.00),
(102, 'Mobile', 1, 25000.00),
(103, 'Headphones', 1, 2000.00),
(104, 'Sofa', 2, 30000.00),
(105, 'Table', 2, 8000.00),
(106, 'T-Shirt', 3, 800.00),
(107, 'Jeans', 3, 1500.00);
SELECT 
    p.product_name,
    c.category_name,
    p.price
FROM products p
JOIN categories c ON p.category_id = c.category_id
WHERE p.price > (
    SELECT AVG(price)
    FROM products
);
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS transactions;
DROP TABLE IF EXISTS attendance;

CREATE TABLE employees (
    employee_id INT,
    name VARCHAR(50),
    department_id INT,
    salary INT,
    manager_id INT
);

CREATE TABLE departments (
    department_id INT,
    department_name VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2)
);

CREATE TABLE transactions (
    transaction_id INT,
    customer_id INT,
    tx_date DATE,
    amount DECIMAL(10,2)
);

CREATE TABLE attendance (
    employee_id INT,
    work_date DATE
);

INSERT INTO departments (department_id, department_name) VALUES
(1, 'Engineering'),
(2, 'Marketing'),
(3, 'Finance');

INSERT INTO employees (employee_id, name, department_id, salary, manager_id) VALUES
(1, 'Alice', 1, 120000, NULL),
(2, 'Bob', 1, 98000, 1),
(3, 'Carla', 2, 76000, 1),
(4, 'David', 3, 87000, NULL),
(5, 'Evelyn', 1, 110000, 1),
(6, 'Frank', 2, 83000, 3),
(7, 'Grace', 3, 95000, 4),
(8, 'Henry', 1, 67000, 2);

INSERT INTO orders (order_id, customer_id, order_date, amount) VALUES
(1, 101, '2024-01-02', 50.00),
(2, 101, '2024-01-09', 75.00),
(3, 102, '2024-01-04', 120.00),
(4, 103, '2024-01-05', 45.00),
(5, 101, '2024-01-16', 90.00),
(6, 104, '2024-01-29', 200.00),
(7, 103, '2024-01-30', 160.00),
(8, 105, '2024-02-01', 70.00);

INSERT INTO transactions (transaction_id, customer_id, tx_date, amount) VALUES
(1, 101, '2024-01-01', 10.00),
(2, 101, '2024-01-05', 20.00),
(3, 102, '2024-01-05', 50.00),
(4, 103, '2024-01-06', 30.00),
(5, 104, '2024-01-20', 100.00),
(6, 102, '2024-01-30', 40.00);

INSERT INTO attendance (employee_id, work_date) VALUES
(1, '2024-01-01'),
(1, '2024-01-02'),
(1, '2024-01-03'),
(2, '2024-01-01'),
(2, '2024-01-03'),
(3, '2024-01-01'),
(3, '2024-01-02'),
(4, '2024-01-02');

-- Question 1: Write a query to find the second-highest salary.
-- Question 2: Write a query to find the Nth highest salary in a generalized way.
-- Question 3: Write a query to return the top 2 employees by salary in each department.
-- Question 4: Write a query to find consecutive attendance dates for a given employee.
-- Question 5: Write a query to find customers with no transactions in a given period.
-- Question 6: Write a query to return each employee and their manager by name.
-- Question 7: Write a query to find duplicate orders by customer_id.
-- Question 8: Write a query to calculate a running total of order amounts by date.
-- Question 9: Write a query to find customers who placed orders in two different time periods.
-- Question 10: Explain when to use RANK, DENSE_RANK, and ROW_NUMBER.
-- Question 11: Write a query to return employees who earn more than the average salary in their department.

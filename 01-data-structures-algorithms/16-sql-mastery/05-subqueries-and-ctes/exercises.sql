DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
    department_id INT,
    department_name VARCHAR(50)
);

CREATE TABLE employees (
    employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    salary INT
);

INSERT INTO departments (department_id, department_name) VALUES
(1, 'Engineering'),
(2, 'Marketing'),
(3, 'Finance');

INSERT INTO employees (employee_id, first_name, last_name, department_id, salary) VALUES
(1, 'Alice', 'Nguyen', 1, 120000),
(2, 'Bob', 'Smith', 1, 98000),
(3, 'Carla', 'Lopez', 2, 76000),
(4, 'David', 'Patel', 3, 87000),
(5, 'Evelyn', 'Kim', 1, 110000),
(6, 'Frank', 'Brown', 2, 83000),
(7, 'Grace', 'Singh', 3, 95000),
(8, 'Henry', 'Lee', 1, 67000);

-- Question 1: Write a query to return employees whose salary is above the overall average salary.
-- Question 2: Write a query to find the second-highest salary.
-- Question 3: Write a query to return employees in Engineering or Marketing using an IN subquery.
-- Question 4: Write a query to return departments that have at least one employee earning more than 90000.
-- Question 5: Write a query to return employees whose salary is above the average salary for their department.
-- Question 6: Write a query using a CTE to calculate the average salary by department and return the department name as well.
-- Question 7: Write a recursive CTE that returns the numbers 1 through 10.
-- Question 8: When should you prefer a CTE over a nested subquery?

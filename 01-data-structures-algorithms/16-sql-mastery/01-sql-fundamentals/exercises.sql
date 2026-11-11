DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    manager_id INT
);

INSERT INTO employees (employee_id, first_name, last_name, department, salary, manager_id) VALUES
(1, 'Alice', 'Nguyen', 'Engineering', 120000, NULL),
(2, 'Bob', 'Smith', 'Engineering', 98000, 1),
(3, 'Carla', 'Lopez', 'Marketing', 76000, 1),
(4, 'David', 'Patel', 'Sales', 89000, 1),
(5, 'Evelyn', 'Kim', 'Engineering', 110000, 1),
(6, 'Frank', 'Brown', 'Finance', 87000, NULL),
(7, 'Grace', 'Singh', 'Marketing', 78000, 3),
(8, 'Henry', 'Lee', NULL, 95000, 2),
(9, 'Iris', 'Wilson', 'Sales', 98000, 4),
(10, 'Jack', 'Taylor', 'Engineering', 65000, 2);

-- Question 1: Write a query that returns all employees sorted by last name.
-- Question 2: Write a query to return only employees in Engineering and sort them by salary descending.
-- Question 3: Write a query to list each distinct department name once.
-- Question 4: Write a query to return the top 3 highest-paid employees.
-- Question 5: Write a query to find all employees whose manager_id is NULL.
-- Question 6: Write a query that shows each employee with a department label that becomes 'Unassigned' when department is NULL.
-- Question 7: Write a query that groups employees into salary bands: 'High', 'Mid', or 'Low'.
-- Question 8: Explain in plain English how NULL behaves differently from a real value in a WHERE clause.

DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS projects;
DROP TABLE IF EXISTS project_assignments;

CREATE TABLE departments (
    department_id INT,
    department_name VARCHAR(50)
);

CREATE TABLE employees (
    employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    manager_id INT
);

CREATE TABLE projects (
    project_id INT,
    project_name VARCHAR(100),
    department_id INT
);

CREATE TABLE project_assignments (
    employee_id INT,
    project_id INT
);

INSERT INTO departments (department_id, department_name) VALUES
(1, 'Engineering'),
(2, 'Marketing'),
(3, 'Finance'),
(4, 'HR');

INSERT INTO employees (employee_id, first_name, last_name, department_id, manager_id) VALUES
(1, 'Alice', 'Nguyen', 1, NULL),
(2, 'Bob', 'Smith', 1, 1),
(3, 'Carla', 'Lopez', 2, 1),
(4, 'David', 'Patel', 3, NULL),
(5, 'Evelyn', 'Kim', 1, 2),
(6, 'Frank', 'Brown', 4, 1),
(7, 'Grace', 'Singh', 2, 3);

INSERT INTO projects (project_id, project_name, department_id) VALUES
(101, 'API Migration', 1),
(102, 'Campaign Launch', 2),
(103, 'Quarterly Forecast', 3),
(104, 'Internal Portal', 1),
(105, 'Hiring Initiative', 4);

INSERT INTO project_assignments (employee_id, project_id) VALUES
(1, 101),
(2, 101),
(2, 104),
(3, 102),
(5, 104),
(4, 103),
(6, 105),
(7, 102);

-- Question 1: Write a query to return each employee and the department name they belong to.
-- Question 2: Write a query to return all employees, including employees who do not belong to a department.
-- Question 3: Write a query to return all departments, including departments with no employees.
-- Question 4: Write a query to return the employee, project, and department for every employee assigned to a project.
-- Question 5: Write a query that shows each employee and their manager by name.
-- Question 6: Write a query to count how many employees are in each department.
-- Question 7: Write a query that lists every project and the department that owns it, along with the employee names assigned to that project.
-- Question 8: When would you choose a LEFT JOIN instead of an INNER JOIN?

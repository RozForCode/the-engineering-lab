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
select * from employee order by last_name
-- Question 2: Write a query to return only employees in Engineering and sort them by salary descending.
select * from employees where department="Engineering" order by salary desc 
-- Question 3: Write a query to list each distinct department name once.
select distinct department from employees
-- Question 4: Write a query to return the top 3 highest-paid employees.
select top 3 from employees order by salary desc
-- Question 5: Write a query to find all employees whose manager_id is NULL.
select * from employees where manager_id is null
-- Question 6: Write a query that shows each employee with a department label that becomes 'Unassigned' when department is NULL.
select employee_id, first_name, last_name, COALESCE(department, 'Unassigned') as department from employees;
-- Question 7: Write a query that groups employees into salary bands: 'High', 'Mid', or 'Low'.
select first_name, 
CASE
    when salary > 100000 then 'high'
    when salary > 80000 then 'mid'
    else 'low'
END as salary_band
from employees


-- Question 8: Explain in plain English how NULL behaves differently from a real value in a WHERE clause.

Null means unknown value
-- so using = to find it is wrong cause that won't return true or false but unknown
-- so we always use is or is not in where clause when it comes null


-- Bonus question: Write a query that shows each item's name along with its final price, calculating the 
-- total by applying any available discount percentage to the base price (defaulting to zero percent discount if the percentage is null) and adding it back to the base price.
select item_name, ((coalesce(discount_percentage,0) * base_price) + base_price) as final_price from investory;

-- even clearner
-- wow here's ai suggestion - Using basic algebra, you can factor out base_price to make the expression cleaner and easier to read:$$\text{base\_price} \times (\text{COALESCE(discount\_percentage, 0)} + 1)$$

select item_name, base_price( coalesce(discount_percentage,0)+1) as final_price from investory;
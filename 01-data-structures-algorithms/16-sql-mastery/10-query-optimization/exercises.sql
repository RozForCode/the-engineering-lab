DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS orders;

CREATE TABLE customers (
    customer_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    city VARCHAR(50),
    signup_date DATE,
    is_active BOOLEAN
);

CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    order_date DATE,
    total DECIMAL(10,2),
    status VARCHAR(20)
);

INSERT INTO customers (customer_id, first_name, last_name, city, signup_date, is_active) VALUES
(1, 'Alice', 'Nguyen', 'Boston', '2023-05-01', TRUE),
(2, 'Bob', 'Smith', 'Chicago', '2024-01-01', TRUE),
(3, 'Carla', 'Lopez', 'Boston', '2023-10-10', FALSE),
(4, 'David', 'Patel', 'New York', '2024-02-15', TRUE),
(5, 'Evelyn', 'Kim', 'Seattle', '2024-03-03', TRUE);

INSERT INTO orders (order_id, customer_id, order_date, total, status) VALUES
(101, 1, '2024-01-10', 150.00, 'paid'),
(102, 1, '2024-01-20', 250.00, 'paid'),
(103, 2, '2024-02-01', 60.00, 'pending'),
(104, 3, '2024-02-02', 90.00, 'paid'),
(105, 4, '2024-02-04', 300.00, 'paid'),
(106, 5, '2024-02-10', 110.00, 'paid');

CREATE INDEX idx_customers_city ON customers(city);
CREATE INDEX idx_orders_customer_id ON orders(customer_id);
CREATE INDEX idx_orders_status_date ON orders(status, order_date);

-- Question 1: Write a query to return Boston customers who have paid orders.
-- Question 2: Write a query to return only the customer_id, first_name, last_name, order_id, and total for the same case.
-- Question 3: Write an EXPLAIN statement for the query above and interpret the plan.
-- Question 4: Write a query to return active customers whose total spend exceeds 200.
-- Question 5: Why is SELECT * often less efficient than selecting only needed columns?
-- Question 6: Identify a query pattern in this dataset that could be sped up by adding an index and explain why.

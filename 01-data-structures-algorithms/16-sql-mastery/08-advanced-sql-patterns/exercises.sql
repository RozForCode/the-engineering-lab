DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS user_sessions;

CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2)
);

CREATE TABLE user_sessions (
    session_id INT,
    user_id INT,
    session_date DATE,
    event_name VARCHAR(50)
);

INSERT INTO orders (order_id, customer_id, order_date, amount) VALUES
(1, 101, '2024-01-02', 50.00),
(2, 101, '2024-01-09', 75.00),
(3, 102, '2024-01-04', 120.00),
(4, 103, '2024-01-05', 45.00),
(5, 101, '2024-01-16', 90.00),
(6, 104, '2024-01-29', 200.00),
(7, 103, '2024-01-30', 160.00),
(8, 105, '2024-02-01', 70.00);

INSERT INTO user_sessions (session_id, user_id, session_date, event_name) VALUES
(1, 101, '2024-01-01', 'login'),
(2, 101, '2024-01-02', 'checkout'),
(3, 102, '2024-01-04', 'login'),
(4, 103, '2024-01-05', 'login'),
(5, 101, '2024-01-09', 'checkout'),
(6, 104, '2024-01-29', 'login'),
(7, 105, '2024-02-01', 'checkout'),
(8, 103, '2024-02-02', 'checkout');

-- Question 1: Write a query to calculate the number of active customers per month based on orders.
-- Question 2: Write a query to determine whether a customer was retained after their first order.
-- Question 3: Write a query to find consecutive session dates for the same user.
-- Question 4: Write a query to compute a running total of order revenue over time.
-- Question 5: Write a query to count how many sessions each user has.
-- Question 6: Write a query to find customers with no order in the last 30 days.
-- Question 7: Write a query to compute a 7-day rolling total of orders per customer.

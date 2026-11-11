DROP TABLE IF EXISTS current_customers;
DROP TABLE IF EXISTS past_customers;

CREATE TABLE current_customers (
    customer_id INT,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE past_customers (
    customer_id INT,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);

INSERT INTO current_customers (customer_id, customer_name, city) VALUES
(1, 'Alice', 'Boston'),
(2, 'Bob', 'Seattle'),
(3, 'Carla', 'Chicago'),
(4, 'David', 'Austin');

INSERT INTO past_customers (customer_id, customer_name, city) VALUES
(2, 'Bob', 'Seattle'),
(3, 'Carla', 'Chicago'),
(5, 'Erin', 'Denver'),
(6, 'Frank', 'Miami');

-- Question 1: Write a query using UNION to combine current and past customers into one list without duplicates.
-- Question 2: Write a query using UNION ALL to combine both tables while preserving duplicates.
-- Question 3: Write a query using INTERSECT to find customers that exist in both tables.
-- Question 4: Write a query using EXCEPT to find current customers who are not in the past_customers table.
-- Question 5: Write a query using EXCEPT to find past customers who are not current customers.
-- Question 6: What is the difference between UNION and UNION ALL?
-- Question 7: Write a query that combines multiple sources of customer data and then removes duplicates.

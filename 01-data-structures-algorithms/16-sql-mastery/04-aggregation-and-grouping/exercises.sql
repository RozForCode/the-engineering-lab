DROP TABLE IF EXISTS sales;
CREATE TABLE sales (
    sale_id INT,
    region VARCHAR(50),
    product VARCHAR(50),
    amount DECIMAL(10,2),
    sale_date DATE
);

INSERT INTO sales (sale_id, region, product, amount, sale_date) VALUES
(1, 'North', 'Laptop', 1200.00, '2024-01-10'),
(2, 'North', 'Mouse', 25.00, '2024-01-11'),
(3, 'South', 'Laptop', 1300.00, '2024-01-15'),
(4, 'South', 'Monitor', 350.00, '2024-01-20'),
(5, 'East', 'Laptop', 1150.00, '2024-01-18'),
(6, 'East', 'Keyboard', 120.00, '2024-01-22'),
(7, 'West', 'Monitor', 320.00, '2024-01-25'),
(8, 'West', 'Laptop', 1450.00, '2024-01-28'),
(9, 'North', 'Tablet', 500.00, '2024-02-02'),
(10, 'South', 'Headphones', 180.00, '2024-02-04');

-- Question 1: Write a query to count how many sales records exist in each region.
-- Question 2: Write a query to calculate total revenue by region.
-- Question 3: Write a query to calculate the average sale amount per product.
-- Question 4: Write a query to find the highest sale in each region.
-- Question 5: Write a query to show only regions whose total revenue exceeds 2000.
-- Question 6: Write a query to find products sold more than once.
-- Question 7: Write a query to bucket sales into 'Premium', 'Standard', or 'Low Value' and show the count and average amount for each bucket.
-- Question 8: Which region had the highest total revenue, and what was it?

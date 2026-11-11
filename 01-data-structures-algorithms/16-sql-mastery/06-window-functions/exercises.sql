DROP TABLE IF EXISTS sales;
CREATE TABLE sales (
    sale_id INT,
    salesperson VARCHAR(50),
    region VARCHAR(50),
    sale_date DATE,
    amount DECIMAL(10,2)
);

INSERT INTO sales (sale_id, salesperson, region, sale_date, amount) VALUES
(1, 'Alice', 'North', '2024-01-01', 500.00),
(2, 'Bob', 'North', '2024-01-02', 450.00),
(3, 'Alice', 'North', '2024-01-03', 600.00),
(4, 'Charlie', 'South', '2024-01-01', 700.00),
(5, 'Dana', 'South', '2024-01-02', 700.00),
(6, 'Eve', 'South', '2024-01-03', 650.00),
(7, 'Frank', 'East', '2024-01-01', 400.00),
(8, 'Grace', 'East', '2024-01-02', 480.00),
(9, 'Frank', 'East', '2024-01-03', 520.00),
(10, 'Helen', 'North', '2024-01-04', 300.00);

-- Question 1: Write a query that assigns a row number to each sale within each region, ordered by amount descending.
-- Question 2: Write a query to show both RANK and DENSE_RANK for sales within each region.
-- Question 3: Write a query to show the previous and next sale amount for each region ordered by sale date.
-- Question 4: Write a query to calculate the running total of sales for each region over time.
-- Question 5: Write a query to calculate a moving average over the previous 2 rows within each region.
-- Question 6: Write a query to find the top-performing salesperson in each region.
-- Question 7: Write a query to calculate the percentage change from the previous sale for each salesperson in each region.
-- Question 8: Explain the difference between RANK, DENSE_RANK, and ROW_NUMBER.

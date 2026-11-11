DROP TABLE IF EXISTS products;
CREATE TABLE products (
    product_id INT,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock INT,
    created_at DATE,
    discontinued BOOLEAN
);

INSERT INTO products (product_id, product_name, category, price, stock, created_at, discontinued) VALUES
(1, 'Laptop Pro', 'Electronics', 1200.00, 15, '2024-01-10', FALSE),
(2, 'Office Mouse', 'Accessories', 25.50, 120, '2023-11-12', FALSE),
(3, 'Desk Lamp', 'Furniture', 60.00, 40, '2024-02-15', FALSE),
(4, 'Monitor 27', 'Electronics', 340.99, 8, '2024-01-30', FALSE),
(5, 'USB Cable', 'Accessories', 12.00, 300, '2023-10-05', TRUE),
(6, 'Standing Desk', 'Furniture', 500.00, 10, '2024-03-02', FALSE),
(7, 'Mechanical Keyboard', 'Accessories', 120.00, 80, '2024-04-20', FALSE),
(8, 'Notebook', 'Office', 8.50, NULL, '2024-05-01', FALSE),
(9, 'Tablet', 'Electronics', 450.00, 25, '2024-06-06', FALSE),
(10, 'Headphones', 'Electronics', 150.00, 60, '2023-09-10', TRUE);

-- Question 1: Write a query to return all Electronic products sorted by price descending.- too easy
-- Question 2: Write a query to return products in Accessories with stock above 50, or Furniture products with stock 20 or less.
select * from products where (category = 'Accessories' and stock>50) OR (category = 
'Furniture' and stock<=20)
-- Question 3: Write a query to find products priced between 50 and 500 that are either Electronics or Furniture.
select * from products where
(price between 50 and 500) and category = 'Electronics' or 'Furniture'
-- issue here 
-- use category in ('Electronics', 'Furniture')
-- cause without it sql assumes bracket after the last 'and' and puts or outside leading to unexpected results

-- Question 4: Write a query to return all product names beginning with L.
select * from products where product_name like 'a%';
-- like is case-insensitive in many rdm

-- Question 5: Write a query to find products where stock is NULL.
select * from products where stock is null
-- Question 6: Write a query to sort products by category ascending and price descending.
select * from products where order by category asc price desc
-- Question 7: Write a query to return the 5 most expensive non-discontinued products.
select top 5 * from products where discontinued = false salary desc
-- Question 8: Write a query to return all non-discontinued products priced between 100 and 400 with stock greater than 20.
select top 5 * from products where discontinued = false where (price between 100 and 400) and stock > 20
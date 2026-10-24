DROP TABLE IF EXISTS products;
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price NUMERIC(10, 2),
    quantity INT,
    added_date DATE,
    discount_rate NUMERIC(5, 2)
);

INSERT INTO products (product_name, category, price, quantity, added_date, discount_rate) VALUES
('Laptop', 'Electronics', 75000.50, 10, '2024-01-15', 10.00),
('Smartphone', 'Electronics', 45000.99, 25, '2024-02-20', 5.00),
('Headphones', 'Accessories', 1500.75, 50, '2024-03-05', 15.00),
('Office Chair', 'Furniture', 5500.00, 20, '2023-12-01', 20.00),
('Desk', 'Furniture', 8000.00, 15, '2023-11-20', 12.00),
('Monitor', 'Electronics', 12000.00, 8, '2024-01-10', 8.00),
('Printer', 'Electronics', 9500.50, 5, '2024-02-01', 7.50),
('Mouse', 'Accessories', 750.00, 40, '2024-03-18', 10.00),
('Keyboard', 'Accessories', 1250.00, 35, '2024-03-18', 10.00),
('Tablet', 'Electronics', 30000.00, 12, '2024-02-28', 5.00);

SELECT * FROM products;

--1) Get all product names in upper case (UPPER)
SELECT UPPER(product_name) 
FROM products;

--2) Get all product names in lower case (LOWER)
SELECT LOWER(product_name)
FROM products;

--3) Calculate length of all product names (LENGTH)
SELECT product_name, LENGTH (product_name) AS product_length
FROM products;

--4) Show product name and catagory in a single column saperated by '-' (CONCAT)
SELECT CONCAT (product_name, '-', category) AS product_catagory
FROM products;

--5) Show first 5 leters of all product names (SUBSTRING)
SELECT SUBSTRING (product_name,1,5)
FROM products;

--6) (TRIM), > Removes all leading and tailing spaces from a text
SELECT TRIM ('    TEXT    ');

--7) replace word phone with device (REPLACE)
SELECT REPLACE (product_name, 'phone', 'device')
FROM products;

--8) Show first 5 leters of all categories (LEFT)
SELECT LEFT (category, 5)
FROM products;

--9) Show last 5 leters of all categories (RIGTH)
SELECT RIGHT (category, 5)
FROM products;






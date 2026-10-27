-- Create Database
CREATE DATABASE library;

-- Switch to the database
\c library;

-- Create Tables
DROP TABLE IF EXISTS Books;
CREATE TABLE Books (
    Book_ID SERIAL PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    Published_Year INT,
    Price NUMERIC(10, 2),
    Stock INT
);
DROP TABLE IF EXISTS customers;
CREATE TABLE Customers (
    Customer_ID SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    City VARCHAR(50),
    Country VARCHAR(150)
);
DROP TABLE IF EXISTS orders;
CREATE TABLE Orders (
    Order_ID SERIAL PRIMARY KEY,
    Customer_ID INT REFERENCES Customers(Customer_ID),
    Book_ID INT REFERENCES Books(Book_ID),
    Order_Date DATE,
    Quantity INT,
    Total_Amount NUMERIC(10, 2)
);

SELECT * FROM Books;
SELECT * FROM Customers;
SELECT * FROM Orders;


-- Import Data into Books Table
COPY Books(Book_ID, Title, Author, Genre, Published_Year, Price, Stock) 
FROM 'D:\WAD\Books.csv' 
CSV HEADER;

-- Import Data into Customers Table
COPY Customers(Customer_ID, Name, Email, Phone, City, Country) 
FROM 'D:\WAD\Customers.csv' 
CSV HEADER;

-- Import Data into Orders Table
COPY Orders(Order_ID, Customer_ID, Book_ID, Order_Date, Quantity, Total_Amount) 
FROM 'D:\WAD\Orders.csv' 
CSV HEADER;


-- 1) Retrieve all books in the "Fiction" genre:
SELECT title, genre
FROM books
WHERE genre = 'Fiction';

-- 2) Find books published after the year 1950:
SELECT title, published_year
FROM books
WHERE published_year >= 1950;

-- 3) List all customers from the Canada:
SELECT name, country
FROM customers 
WHERE country = 'Canada';

-- 4) Show orders placed in November 2023:
SELECT book_id, order_date
FROM orders
WHERE order_date>='2023-11-01' and order_date<='2023-11-30';

-- 5) Retrieve the total stock of books available:
SELECT SUM (stock) AS total_stock
FROM books;

-- 6) Find the details of the most expensive book:
SELECT * FROM books
ORDER BY price DESC
LIMIT 1;

-- 7) Show all customers who ordered more than 1 quantity of a book:
SELECT * FROM orders
WHERE quantity >'1';

-- 8) Retrieve all orders where the total amount exceeds $20:
SELECT * FROM orders
WHERE total_amount >'20';

-- 9) List all genres available in the Books table:
SELECT DISTINCT genre 
FROM books;

-- 10) Find the book with the lowest stock:
SELECT * FROM books
ORDER BY stock
LIMIT 1;

-- 11) Calculate the total revenue generated from all orders:
SELECT SUM (total_amount) AS total_revenue
FROM ORDERS;


-- Advance Questions : 

-- 1) Retrieve the total number of books sold for each genre:
SELECT b.genre, SUM(o.quantity)
FROM books b JOIN orders o
ON b.book_id = o.book_id
GROUP BY b.genre;


-- 2) Find the average price of books in the "Fantasy" genre:
SELECT AVG(price)
FROM books
WHERE genre='Fantasy';

-- 3) List customers who have placed at least 2 orders:
SELECT c.name, o.customer_id, COUNT(o.order_id) AS orders_placed
FROM orders o JOIN customers c
ON o.customer_id = c.customer_id
GROUP BY c.name, o.customer_id
HAVING COUNT(o.order_id)>1
ORDER BY orders_placed DESC;

-- 4) Find the most frequently ordered book:
SELECT b.title, o.book_id, COUNT (o.book_id) AS order_frequency
FROM orders o JOIN books b ON b.book_id = o.book_id
GROUP BY o.book_id, b.title
ORDER BY order_frequency DESC LIMIT 1;

-- 5) Show the top 3 most expensive books of 'Fantasy' Genre :
SELECT * FROM books
WHERE genre = 'Fantasy'
ORDER BY price DESC
LIMIT 3;

-- 6) Retrieve the total quantity of books sold by each author:
SELECT b.author, SUM(o.quantity) AS books_sold
FROM books b JOIN orders o ON b.book_id = o.book_id
GROUP BY b.author
ORDER BY books_sold DESC;

-- 7) List the cities where customers who spent over $30 are located:
SELECT distinct c.city
FROM customers c JOIN orders o ON c.customer_id = o.customer_id
WHERE o.total_amount >30;

-- 8) Find the customer who spent the most on orders:
SELECT c.customer_id, c.name, SUM(o.total_amount) AS Total_Spent
FROM orders o
JOIN customers c ON o.customer_id=c.customer_id
GROUP BY c.customer_id, c.name
ORDER BY Total_spent Desc LIMIT 1;

--9) Calculate the stock remaining after fulfilling all orders:
SELECT b.title, b.book_id, b.stock, COALESCE (SUM(o.quantity),0) AS books_sold, 
b.stock-COALESCE (SUM(o.quantity),0) AS remaining_stock
FROM books b JOIN orders o
ON b.book_id = o.book_id
GROUP BY b.title, b.book_id
ORDER BY b.book_id;







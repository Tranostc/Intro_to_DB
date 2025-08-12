--Create the database
CREATE DATABASE IF NOT EXISTS alx_book_store;

--Use the database
USE alx_book_store;

--Create the customer table
CREATE TABLE IF NOT EXISTS customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    address TEXT
);

--Insert multiple rows of data
INSERT INTO customer (customer_id, customer_name, email, address)
VALUES
 (1, 'Cole Baidoo', 'cbaidoo@sandtech.com', '123 Happiness Ave.');
 (2, 'Blessing Malik', 'bmalik@sandtech.com', '124 Happiness  Ave.'),
 (3, 'Obed Ehoneah', 'eobed@sandtech.com', '125 Happiness  Ave.'),
 (4, 'Nehemial Kamolu', 'nkamolu@sandtech.com', '126 Happiness  Ave.');

--Verify the insertion
SELECT * FROM customer;
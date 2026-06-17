-- simple_practice.sql
-- Purpose: Basic SQL practice with simple queries
-- Author: shrustie patil
-- Date: June 14, 2026

-- =============================================
-- CREATE A SIMPLE PRODUCTS TABLE
-- =============================================

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10,2),
    stock_quantity INT,
    category VARCHAR(30)
);

-- =============================================
-- INSERT SAMPLE DATA
-- =============================================

INSERT INTO products VALUES
(1, 'Laptop', 999.99, 50, 'Electronics'),
(2, 'Mouse', 25.50, 200, 'Electronics'),
(3, 'Desk Chair', 199.99, 30, 'Furniture'),
(4, 'Coffee Mug', 12.99, 150, 'Kitchen'),
(5, 'Monitor', 299.99, 75, 'Electronics'),
(6, 'Desk Lamp', 45.00, 100, 'Furniture');

-- =============================================
-- QUESTION 1: Find Expensive Products
-- =============================================
-- Find products that cost more than $100
-- Show: product_name, price, category
-- Sort: highest price first

SELECT product_name, price, category
FROM products
WHERE price > 100
ORDER BY price DESC;

-- =============================================
-- QUESTION 2: Find Low Stock Items
-- =============================================
-- Find products with less than 40 items in stock
-- Show: product_name, stock_quantity, category
-- Sort: lowest stock first

SELECT product_name, stock_quantity, category
FROM products
WHERE stock_quantity < 40
ORDER BY stock_quantity ASC;

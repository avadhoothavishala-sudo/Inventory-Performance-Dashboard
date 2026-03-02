-- Inventory Performance Dashboard SQL Queries
-- Author: Vishala
-- Database: MySQL

-- Total Sales and Profit
SELECT 
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM orders;

-- Monthly Revenue Trend
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(sales) AS monthly_sales
FROM orders
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY month;

-- Top 5 Products by Sales
SELECT 
    product_name,
    SUM(sales) AS total_sales
FROM orders
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 5;
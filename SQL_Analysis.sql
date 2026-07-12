create database Ecommerce_DataBase;

use Ecommerce_DataBase;

-- Total Sales
SELECT SUM(sales) AS Total_Sales
FROM ecommerce_data;

-- Total Profit
SELECT SUM(profit) AS Total_Profit
FROM ecommerce_data;

-- Sales by Category
SELECT category_name,
SUM(sales) AS Total_Sales
FROM ecommerce_data
GROUP BY category_name
ORDER BY Total_Sales DESC;

-- Sales by Region
SELECT customer_region,
SUM(sales) AS Total_Sales
FROM ecommerce_data
GROUP BY customer_region
ORDER BY Total_Sales DESC;

-- Top 5 Products
SELECT product_name,
SUM(sales) AS Total_Sales
FROM ecommerce_data
GROUP BY product_name
ORDER BY Total_Sales DESC
LIMIT 5;

-- Sales by Customer Segment
SELECT customer_segment,
SUM(sales) AS Total_Sales
FROM ecommerce_data
GROUP BY customer_segment;
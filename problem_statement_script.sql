USE sales_project_mysql;

-- ==================================================
-- Problem statement 1: Sales Analysis
-- Goal: Analysise the Total Sales Revenue from Different Product Categories
-- ==================================================

-- Step 1: Calculate Total Sales Revenue per Category:

-- Use the Sales table to calculate the total sales revenue for each product category.
-- Join the Sales table with the Products table to get the product category.
-- Group by product category and calculate the sum of total_amount.

SELECT p.product_category, SUM(s.total_amount) AS total_revenue
FROM sales s
JOIN products p 
USING (product_id)
GROUP BY p.product_category
ORDER BY total_revenue DESC;
-- ==================================================

-- Step 2: Analyze Sales Revenue Over Time:

-- Use the Sales table to get the transaction date.
-- Join the Sales table with the Products table to get the product category.
-- Group by date (you may want to group by month or year for trends) and product category.
-- Calculate the sum of total_amount for each group.

SELECT DATE_FORMAT(s.date, '%Y-%m') AS month, p.product_category, SUM(s.total_amount) AS total_revenue
FROM sales s
JOIN products p 
USING (product_id)
GROUP BY month, p.product_category
ORDER BY total_revenue DESC;
-- ==================================================

-- Step 3:Identify Top-Performing Suppliers:
-- Rank suppliers based on total sales revenue and the number of products sold.
-- Order the results to identify top-performing suppliers.

SELECT su.supplier_name, sa.total_amount
FROM suppliers su
JOIN sales sa
USING (supplier_id)
GROUP BY su.supplier_name, sa.total_amount
ORDER BY sa.total_amount DESC;

-- ==================================================
-- Problem statement 2: Customer Analysis 
-- Goal: Spot our customer's demographics and purchasing behavior
-- ==================================================

-- Step 1: Identify the top customers by total spending:
-- Question: Who are the top 10 customers based on their total spending?

SELECT c.customer_id, SUM(s.total_amount) AS total_spent
FROM customers c
JOIN sales s
USING (customer_id)
GROUP BY c.customer_id
ORDER BY total_spent DESC;

SELECT * FROM sales;

-- ==================================================

-- Step 2: Analyze customer demographics based on purchase frequency:
-- Question: What is the average age and gender distribution of customers who made more than 5 purchases?

SELECT c.customer_id,
ROUND(AVG(c.age),0) AS avg_age, 
SUM(CASE WHEN c.gender = 'Male' THEN 1 ELSE 0 END) AS male_count, 
SUM(CASE WHEN c.gender = 'Female' THEN 1 ELSE 0 END) AS female_count, 
SUM(s.quantity) AS total_purchases, 
SUM(s.total_amount) AS total_spent
FROM customers c
JOIN sales s
USING (customer_id)
GROUP BY c.customer_id HAVING total_purchases >= 3
ORDER BY total_spent DESC;
-- ==================================================

-- Step 3: Determine the most popular product categories among different age groups:
-- Question: What are the most popular product categories among different age groups (e.g., under 30, 30-50, over 50)?

SELECT CASE 
WHEN c.age < 30 THEN 'Under 30' 
WHEN c.age BETWEEN 30 AND 50 THEN '30-50'
ELSE 'Over 50' 
END AS age_group, 
p.product_category, COUNT(p.product_id) AS purchase_count
FROM sales s
JOIN customers c USING (customer_id)
JOIN products p USING (product_id)
GROUP BY age_group, p.product_category
ORDER BY age_group, purchase_count DESC;




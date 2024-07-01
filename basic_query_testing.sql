USE sales_project_mysql;

-- Testing exercises:
-- Retrieve data to see it was correctly filled:

SELECT * FROM sales;
SELECT * FROM customers WHERE age > 30;

-- Filtering and Sorting
-- Retrieve all customers who are males from the customers table.

SELECT *
FROM customers 
WHERE gender = 'Male';

-- Retrieve all products with a price_per_unit greater than 100 from the products table 
-- and order DESC to see the most expnsive products:

SELECT * 
FROM products 
WHERE price_per_unit > 100
ORDER BY price_per_unit DESC;

-- Retrieve all suppliers whose supplier_name starts with 'S' from the suppliers table.

SELECT *
FROM suppliers 
WHERE supplier_name LIKE 'S%';

-- Retrieve all sales transactions where the total_amount is greater than or equal to 200 from the sales table, 
-- sorted by total_amount in descending order.

SELECT * 
FROM sales
WHERE total_amount >= 200
ORDER BY total_amount DESC;

-- Retrieve the details of all sales transactions along with the corresponding customer names.

SELECT * 
FROM sales 
JOIN customers 
USING (customer_id);



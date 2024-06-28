-- Creating Sales Dataset:
CREATE DATABASE IF NOT EXISTS sales_project_mysql;
USE sales_project_mysql;

-- Creating tables:
 
CREATE TABLE sales (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE,
    customer_id VARCHAR(255),
    product_id VARCHAR(255),
    quantity INT,
    price_per_unit DECIMAL(10, 2),
    total_amount DECIMAL(10, 2),
    store_id VARCHAR(255),  
    payment_method VARCHAR(255),
    supplier_id VARCHAR(255),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);

CREATE TABLE customers (
    customer_id VARCHAR(255) PRIMARY KEY,
    gender VARCHAR(10),
    age INT,
    email VARCHAR(255),
    phone_number VARCHAR(20),
    registration_date DATE,
    loyalty_points INT
);

CREATE TABLE products (
    product_id VARCHAR(255) PRIMARY KEY,
    product_name VARCHAR(255),
    product_category VARCHAR(255),
    price_per_unit DECIMAL(10, 2),
    stock_quantity INT,
    supplier_id VARCHAR(255),
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);

CREATE TABLE suppliers (
    supplier_id VARCHAR(255) PRIMARY KEY,
    supplier_name VARCHAR(255),
    contact_person VARCHAR(255),
    contact_email VARCHAR(255),
    contact_phone VARCHAR(20),
    address VARCHAR(255)
);







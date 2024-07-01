# SQL Online Retail Sales Data Analysis Project

<img src="https://github.com/davarques/SQL-Retail-Sales-Analysis/assets/160759223/c9f3d428-fc9d-4290-bbeb-713a3a788db9" alt="Telco Customer Churn" width="800">

## Subtitle: Analyzing Online Retail Sales Data with SQL

## Project Overview 📋

This is an end-to-end SQL project, from dataset creation and seeding to problem statement creation and data analysis through SQL. We created a fake database in MySQL consisting of 4 tables (sales, customers, suppliers, and products). The data was auto-populated randomly through AI, and then we conducted a sales and customer insights analysis.

---

## Dataset (Tables) 🗂️

This project consists of four tables.: `Sales`, `Customers`, `Suppliers`, `Products`

<img src="https://github.com/davarques/SQL-Retail-Sales-Analysis/assets/160759223/bbce92ae-b159-4625-a940-96704ca56249" alt="Telco Customer Churn" width="600">

---

### Data Relationships 🔗

**Sales Table**
- `transaction_id` (Primary Key)
- `customer_id` (Foreign Key to Customers table)
- `product_id` (Foreign Key to Products table)
- `supplier_id` (Foreign Key to Suppliers table)

**Customers Table**
- `customer_id` (Primary Key)

**Products Table**
- `product_id` (Primary Key)
- `supplier_id` (Foreign Key to Suppliers table)

**Suppliers Table**
- `supplier_id` (Primary Key)

# SQL Online Retail Sales Project

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
  
---

### Problem Statement Analysis 🌐

`SQL` results:

`Top Product Categories` 

<img src="https://github.com/davarques/SQL-Retail-Sales-Analysis/assets/160759223/e31665e0-5d43-426b-8d0a-a50b3fe0f658" width="300">

---

`Top Suppliers` 

<img src="https://github.com/davarques/SQL-Retail-Sales-Analysis/assets/160759223/b754914e-b51b-44bc-ad55-c9c4f9a19039" width="300">

---

`Profitable customer's Demographics` 

<img src="https://github.com/davarques/SQL-Retail-Sales-Analysis/assets/160759223/720fbec6-cd23-4e6f-a827-7eb9f888413b" width="600">

---

### Visualizations 📊

`Product Category Distribution`

<img src="https://github.com/davarques/SQL-Retail-Sales-Analysis/assets/160759223/ef42f3c1-23a0-4a04-a5e9-cdc0c6210ba0" width="600">

---

`Monthly Sales trend`

<img src="https://github.com/davarques/SQL-Retail-Sales-Analysis/assets/160759223/73b03f38-52d0-4ebb-8501-9e57026e998b" width="600">

---

`Top Suppliers`

<img src="https://github.com/davarques/SQL-Retail-Sales-Analysis/assets/160759223/8c2496f6-8da7-4157-9538-aa3291c5803f" width="320">

---

### Conclusions 💡

#### Sales Analysis:
- **Main Revenue Sources**: Electronics and Accessories are the top product categories.
- **Seasonal Trends**: Higher sales in the first quarter of the year.
- **Top Suppliers**: Our top 3 suppliers are Gadgets4U, ElectronicsRUs, and FashionTrends.

#### Customer Analysis:
- **Gender Distribution**: Sales distribution is 50/50 between genders.
- **Profitable Customer Demographics**: The most profitable customers (3-5 purchases) are aged between 28-40 years old.




USE sales_project_mysql;

-- Seeding tables with random/trainin data generated with AI:    

-- Filing Customers table: 

INSERT INTO customers (customer_id, gender, age, email, phone_number, registration_date, loyalty_points)
VALUES
('C001', 'Male', 35, 'john.doe@example.com', '123-456-7890', '2020-01-15', 100),
('C002', 'Female', 28, 'jane.smith@example.com', '987-654-3210', '2019-05-20', 75),
('C003', 'Male', 40, 'mike.jones@example.com', '555-123-4567', '2021-02-10', 50),
('C004', 'Female', 45, 'emily.wilson@example.com', '222-333-4444', '2018-11-28', 200),
('C005', 'Male', 30, 'david.brown@example.com', '777-888-9999', '2022-03-05', 150),
('C006', 'Female', 32, 'sarah.green@example.com', '111-222-3333', '2020-09-12', 120),
('C007', 'Male', 25, 'kevin.white@example.com', '444-555-6666', '2023-01-08', 80),
('C008', 'Female', 38, 'lisa.gray@example.com', '666-777-8888', '2017-07-20', 90),
('C009', 'Male', 42, 'adam.johnson@example.com', '999-000-1111', '2019-04-03', 110),
('C010', 'Female', 29, 'jennifer.taylor@example.com', '333-444-5555', '2021-06-15', 130);

-- Filling Suppliers table: 

INSERT INTO suppliers (supplier_id, supplier_name, contact_person, contact_email, contact_phone, address)
VALUES
('S001', 'ElectronicsRUs', 'John Smith', 'info@electronicsrus.com', '111-222-3333', '123 Main St, Cityville, USA'),
('S002', 'Gadgets4U', 'Emily Brown', 'info@gadgets4u.com', '444-555-6666', '456 Oak Ave, Townsville, USA'),
('S003', 'FashionTrends', 'Mike Johnson', 'info@fashiontrends.com', '777-888-9999', '789 Pine Rd, Villageton, USA'),
('S004', 'SportyGear', 'Sarah Green', 'info@sportygear.com', '999-000-1111', '321 Elm St, Hamletown, USA'),
('S005', 'HomeEssentials', 'Kevin White', 'info@homeessentials.com', '222-333-4444', '567 Maple Ave, Suburbia, USA'),
('S006', 'OutdoorAdventures', 'Lisa Gray', 'info@outdooradventures.com', '666-777-8888', '890 Cedar Rd, Countryside, USA'),
('S007', 'HealthFirst', 'Adam Johnson', 'info@healthfirst.com', '333-444-5555', '234 Birch St, Woodtown, USA'),
('S008', 'ToyWorld', 'Jennifer Taylor', 'info@toyworld.com', '555-666-7777', '678 Walnut Ave, Seaside, USA'),
('S009', 'PetParadise', 'David Brown', 'info@petparadise.com', '888-999-0000', '901 Pineapple Blvd, Beachside, USA'),
('S010', 'KitchenKings', 'Emily Wilson', 'info@kitchenkings.com', '123-456-7890', '345 Cherry St, Uptown, USA');

-- Filing Products table:

INSERT INTO products (product_id, product_name, product_category, price_per_unit, stock_quantity, supplier_id)
VALUES
('P001', 'Laptop', 'Electronics', 999.99, 50, 'S001'),
('P002', 'Smartphone', 'Electronics', 699.99, 100, 'S002'),
('P003', 'Headphones', 'Electronics', 99.99, 200, 'S003'),
('P004', 'Running Shoes', 'Sports', 79.99, 150, 'S002'),
('P005', 'Gaming Console', 'Electronics', 399.99, 80, 'S001'),
('P006', 'T-shirt', 'Apparel', 19.99, 300, 'S003'),
('P007', 'Watch', 'Accessories', 299.99, 120, 'S002'),
('P008', 'Sunglasses', 'Accessories', 129.99, 180, 'S001'),
('P009', 'Backpack', 'Travel', 49.99, 250, 'S003'),
('P010', 'Bookshelf', 'Furniture', 149.99, 90, 'S002');

-- Filing Sales table: 

INSERT INTO sales (date, customer_id, product_id, quantity, price_per_unit, total_amount, store_id, payment_method, supplier_id)
VALUES
('2023-01-05', 'C001', 'P001', 2, 49.99, 99.98, 'Store_A', 'Credit Card', 'S001'),
('2023-01-08', 'C002', 'P002', 1, 199.99, 199.99, 'Store_B', 'Cash', 'S002'),
('2023-01-10', 'C003', 'P003', 3, 29.99, 89.97, 'Store_A', 'Debit Card', 'S003'),
('2023-01-15', 'C004', 'P004', 1, 149.99, 149.99, 'Store_C', 'Credit Card', 'S002'),
('2023-01-18', 'C005', 'P005', 2, 79.99, 159.98, 'Store_B', 'Credit Card', 'S001'),
('2023-01-20', 'C001', 'P006', 1, 99.99, 99.99, 'Store_A', 'Cash', 'S003'),
('2023-01-25', 'C002', 'P007', 4, 39.99, 159.96, 'Store_C', 'Debit Card', 'S002'),
('2023-01-28', 'C003', 'P008', 2, 69.99, 139.98, 'Store_B', 'Credit Card', 'S001'),
('2023-02-02', 'C004', 'P009', 1, 249.99, 249.99, 'Store_A', 'Credit Card', 'S003'),
('2023-02-05', 'C005', 'P010', 3, 19.99, 59.97, 'Store_B', 'Cash', 'S002');

-- Adding more sales data to make dataset bigger: 

INSERT INTO customers (customer_id, gender, age, email, phone_number, registration_date, loyalty_points)
VALUES 
('C007','Female', 25, 'jane.smith@example.com', '987-654-3210', '2022-07-10', 50),
('C008', 'Male', 40, 'michael.jones@example.com', '555-123-4567', '2022-08-15', 75),
('C009', 'Female', 35, 'emily.wilson@example.com', '444-567-8901', '2022-09-20', 150),
('C010', 'Male', 28, 'chris.brown@example.com', '777-999-3333', '2022-10-25', 200),
('C011', 'Female', 45, 'sarah.green@example.com', '111-222-3333', '2022-11-30', 80),
('C012', 'Male', 32, 'david.miller@example.com', '666-777-8888', '2023-01-05', 120),
('C013', 'Female', 29, 'lisa.thomas@example.com', '222-333-4444', '2023-02-10', 90),
('C014', 'Male', 50, 'robert.white@example.com', '888-777-6666', '2023-03-15', 110),
('C015', 'Female', 27, 'jessica.hall@example.com', '555-888-9999', '2023-04-20', 70);

INSERT INTO customers (customer_id, gender, age, email, phone_number, registration_date, loyalty_points)
VALUES
('C016', 'Male', 30, 'john.doe@example.com', '123-456-7890', '2022-06-01', 100),
('C017', 'Female', 25, 'jane.smith@example.com', '987-654-3210', '2022-07-10', 50),
('C018', 'Male', 40, 'michael.jones@example.com', '555-123-4567', '2022-08-15', 75),
('C019', 'Female', 35, 'emily.wilson@example.com', '444-567-8901', '2022-09-20', 150),
('C020', 'Male', 28, 'chris.brown@example.com', '777-999-3333', '2022-10-25', 200),
('C021', 'Female', 45, 'sarah.green@example.com', '111-222-3333', '2022-11-30', 80),
('C022', 'Male', 32, 'david.miller@example.com', '666-777-8888', '2023-01-05', 120),
('C023', 'Female', 29, 'lisa.thomas@example.com', '222-333-4444', '2023-02-10', 90),
('C024', 'Male', 50, 'robert.white@example.com', '888-777-6666', '2023-03-15', 110),
('C025', 'Female', 27, 'jessica.hall@example.com', '555-888-9999', '2023-04-20', 70);

INSERT INTO suppliers (supplier_id, supplier_name, contact_person, contact_email, contact_phone, address)
VALUES
('S024', 'Tech Solutions Inc.', 'Mark Johnson', 'mark.johnson@techsolutions.com', '555-111-2222', '123 Main St, Anytown'),
('S025', 'Globe Enterprises', 'Emily Davis', 'emily.davis@globeenterprises.com', '333-444-5555', '456 Oak Ave, Newtown'),
('S026', 'Global Products Ltd.', 'Peter Wilson', 'peter.wilson@globalproducts.com', '666-777-8888', '789 Pine St, Cityville'),
('S027', 'Top Electronics Co.', 'Anna Smith', 'anna.smith@topelectronics.com', '999-888-7777', '321 Elm St, Village'),
('S028', 'Worldwide Supplies LLC', 'James Brown', 'james.brown@worldwidesupplies.com', '111-222-3333', '654 Cedar Ave, Townsville'),
('S029', 'Innovative Solutions Ltd.', 'Jennifer Lee', 'jennifer.lee@innovativesolutions.com', '777-666-5555', '987 Maple Dr, Metropolis'),
('S030', 'Excel Parts Inc.', 'Richard Clark', 'richard.clark@excelparts.com', '444-555-6666', '753 Birch St, Megacity'),
('S031', 'Star Tech Industries', 'Jessica Martin', 'jessica.martin@startech.com', '222-333-4444', '852 Oak Lane, Capital City'),
('S032', 'Global Gadgets Ltd.', 'Michael Anderson', 'michael.anderson@globalgadgets.com', '888-999-0000', '369 Pine Ave, City Center'),
('S033', 'Ace Components Ltd.', 'Rachel Harris', 'rachel.harris@acecomponents.com', '123-456-7890', '456 Cedar Ave, Downtown');

INSERT INTO products (product_id, product_name, product_category, price_per_unit, stock_quantity, supplier_id)
VALUES
('P071', 'Smart Speaker', 'Electronics', 149.99, 60, 'S024'),
('P072', 'Wireless Mouse', 'Electronics', 29.99, 200, 'S025'),
('P073', 'External Hard Drive', 'Electronics', 129.99, 80, 'S026'),
('P074', 'Desk Lamp', 'Electronics', 39.99, 150, 'S027'),
('P075', 'Monitor Stand', 'Electronics', 49.99, 100, 'S028'),
('P076', 'Bluetooth Keyboard', 'Electronics', 79.99, 120, 'S029'),
('P077', 'Gaming Mouse Pad', 'Electronics', 19.99, 300, 'S030'),
('P078', 'USB Hub', 'Electronics', 24.99, 250, 'S031'),
('P079', 'Wireless Charger', 'Electronics', 59.99, 90, 'S032'),
('P080', 'Car Charger', 'Electronics', 19.99, 180, 'S033');


INSERT INTO sales (date, customer_id, product_id, quantity, price_per_unit, total_amount, store_id, payment_method, supplier_id)
VALUES
('2023-08-20', 'C016', 'P071', 1, 149.99, 149.99, 'Store_A', 'Credit Card', 'S024'),
('2023-08-22', 'C017', 'P072', 2, 29.99, 59.98, 'Store_B', 'Cash', 'S025'),
('2023-08-25', 'C018', 'P073', 1, 129.99, 129.99, 'Store_A', 'Debit Card', 'S026'),
('2023-08-28', 'C019', 'P074', 3, 39.99, 119.97, 'Store_C', 'Credit Card', 'S027'),
('2023-09-01', 'C020', 'P075', 1, 49.99, 49.99, 'Store_B', 'Credit Card', 'S028'),
('2023-09-05', 'C021', 'P076', 2, 79.99, 159.98, 'Store_A', 'Cash', 'S029'),
('2023-09-10', 'C022', 'P077', 3, 19.99, 59.97, 'Store_C', 'Credit Card', 'S030'),
('2023-09-15', 'C023', 'P078', 1, 24.99, 24.99, 'Store_A', 'Credit Card', 'S031'),
('2023-09-18', 'C024', 'P079', 2, 59.99, 119.98, 'Store_B', 'Cash', 'S032'),
('2023-09-20', 'C025', 'P080', 1, 19.99, 19.99, 'Store_C', 'Debit Card', 'S033');


INSERT INTO sales (date, customer_id, product_id, quantity, price_per_unit, total_amount, store_id, payment_method, supplier_id)
VALUES
('2023-08-20', 'C016', 'P071', 1, 149.99, 149.99, 'Store_A', 'Credit Card', 'S024'),
('2023-08-22', 'C017', 'P072', 2, 29.99, 59.98, 'Store_B', 'Cash', 'S025'),
('2023-08-25', 'C018', 'P073', 1, 129.99, 129.99, 'Store_A', 'Debit Card', 'S026'),
('2023-08-28', 'C019', 'P074', 3, 39.99, 119.97, 'Store_C', 'Credit Card', 'S027'),
('2023-09-01', 'C020', 'P075', 1, 49.99, 49.99, 'Store_B', 'Credit Card', 'S028'),
('2023-09-05', 'C021', 'P076', 2, 79.99, 159.98, 'Store_A', 'Cash', 'S029'),
('2023-09-10', 'C022', 'P077', 3, 19.99, 59.97, 'Store_C', 'Credit Card', 'S030'),
('2023-09-15', 'C023', 'P078', 1, 24.99, 24.99, 'Store_A', 'Credit Card', 'S031'),
('2023-09-18', 'C024', 'P079', 2, 59.99, 119.98, 'Store_B', 'Cash', 'S032'),
('2023-09-20', 'C025', 'P080', 1, 19.99, 19.99, 'Store_C', 'Debit Card', 'S033');



    
    
    

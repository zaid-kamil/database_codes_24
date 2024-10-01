use db_sep_24_5_30;

-- drop tables

drop table if exists Customer;
drop table if exists Address;
drop table if exists Products;
drop table if exists Orders;
drop table if exists OrderDetails;


-- Create Customer Table
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Email VARCHAR(100)
);

-- Create Address Table
CREATE TABLE Address (
    AddressID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    Street VARCHAR(100),
    City VARCHAR(100),
    State VARCHAR(50),
    ZipCode VARCHAR(10),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Create Products Table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2)
);

-- Create Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    AddressID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (AddressID) REFERENCES Address(AddressID)
);

-- Create OrderDetails Table (to normalize the many-to-many relationship between Orders and Products)
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    Price DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Insert data into Customer table

INSERT INTO Customer (FirstName, LastName, Email)
VALUES 
('John', 'Doe', 'john.doe@example.com'),
('Jane', 'Smith', 'jane.smith@example.com'),
('Michael', 'Johnson', 'michael.j@example.com'),
('Emily', 'Davis', 'emily.davis@example.com'),
('Robert', 'Brown', 'robert.brown@example.com');

-- Insert data into Address table
INSERT INTO Address (CustomerID, Street, City, State, ZipCode)
VALUES 
(1, '123 Main St', 'New York', 'NY', '10001'),
(2, '456 Oak St', 'Los Angeles', 'CA', '90001'),
(3, '789 Maple St', 'Chicago', 'IL', '60601'),
(4, '101 Pine St', 'Houston', 'TX', '77001'),
(5, '202 Cedar St', 'Phoenix', 'AZ', '85001');

-- Insert data into Products table
INSERT INTO Products (ProductName, Price)
VALUES 
('Laptop', 999.99),
('Smartphone', 699.99),
('Tablet', 299.99),
('Headphones', 99.99),
('Smartwatch', 199.99);

-- Insert data into Orders table
INSERT INTO Orders (CustomerID, AddressID, OrderDate, TotalAmount)
VALUES 
(1, 1, '2024-09-25', 1099.98),
(2, 2, '2024-09-26', 799.99),
(3, 3, '2024-09-27', 1399.98),
(4, 4, '2024-09-28', 299.99),
(5, 5, '2024-09-29', 1199.98),
(1, 1, '2024-09-30', 899.99),
(2, 2, '2024-09-30', 1299.98),
(3, 3, '2024-09-30', 1099.98),
(4, 4, '2024-09-30', 399.98),
(5, 5, '2024-09-30', 499.99);

-- Insert data into OrderDetails table
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, Price)
VALUES 
(1, 1, 1, 999.99), -- Order 1: 1 Laptop
(1, 4, 1, 99.99), -- Order 1: 1 Headphones
(2, 2, 1, 699.99), -- Order 2: 1 Smartphone
(3, 1, 1, 999.99), -- Order 3: 1 Laptop
(3, 5, 2, 199.99), -- Order 3: 2 Smartwatches
(4, 3, 1, 299.99), -- Order 4: 1 Tablet
(5, 1, 1, 999.99), -- Order 5: 1 Laptop
(5, 5, 1, 199.99), -- Order 5: 1 Smartwatch
(6, 2, 1, 699.99), -- Order 6: 1 Smartphone
(6, 3, 2, 299.99); -- Order 6: 2 Tablets



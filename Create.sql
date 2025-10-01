create database library;
-- Customer Table
use library;
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Address TEXT
);

-- Category Table
CREATE TABLE Category (
    CategoryID INT PRIMARY KEY AUTO_INCREMENT,
    CategoryName VARCHAR(100)
);

-- Product Table
CREATE TABLE Product (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2),
    Stock INT,
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

-- Order Table
CREATE TABLE OrderTable (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    OrderDate DATE,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- OrderDetails Table
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES OrderTable(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);
INSERT INTO Customer (Name, Email, Address) VALUES
('Vaishnavi Gautam', 'vaishnavi@example.com', 'Ghaziabad, India'),
('Ravi Kumar', 'ravi.k@example.com', 'Delhi, India'),
('Anjali Mehta', 'anjali.m@example.com', 'Mumbai, India');
INSERT INTO Category (CategoryName) VALUES
('Electronics'),
('Books'),
('Clothing');
INSERT INTO Product (ProductName, Price, Stock, CategoryID) VALUES
('Wireless Mouse', 799.00, 50, 1),
('Python Programming Book', 499.00, 100, 2),
('Denim Jacket', 1499.00, 30, 3),
('Bluetooth Speaker', 1299.00, 20, 1);
INSERT INTO OrderTable (OrderDate, CustomerID) VALUES
('2025-10-01', 1),
('2025-10-01', 2),
('2025-10-02', 3);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES
(1, 1, 2),  -- Vaishnavi ordered 2 Wireless Mice
(1, 2, 1),  -- Vaishnavi ordered 1 Python Book
(2, 3, 1),  -- Ravi ordered 1 Denim Jacket
(3, 4, 1);  -- Anjali ordered 1 Bluetooth Speaker

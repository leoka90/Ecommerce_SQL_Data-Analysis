CREATE DATABASE ecommerce_db;
USE ecommerce_db;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Country VARCHAR(50)
);

# Create Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2)
);

# Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

# Create OrderItems table
CREATE TABLE OrderItems (
    OrderItemID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    Subtotal DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

# Insert sample Customers
INSERT INTO Customers VALUES
(1, 'Alice Smith', 'alice@example.com', 'USA'),
(2, 'Bob Johnson', 'bob@example.com', 'Canada'),
(3, 'Carlos Lopez', 'carlos@example.com', 'Mexico');

-- Insert sample Products
INSERT INTO Products VALUES
(101, 'Laptop', 'Electronics', 899.99),
(102, 'Smartphone', 'Electronics', 499.99),
(103, 'Book', 'Books', 19.99),
(104, 'Headphones', 'Accessories', 79.99);

-- Insert sample Orders
INSERT INTO Orders VALUES
(1001, 1, '2025-06-01', 979.98),
(1002, 2, '2025-06-05', 519.98),
(1003, 3, '2025-06-10', 19.99);

-- Insert sample OrderItems
INSERT INTO OrderItems VALUES
(1, 1001, 101, 1, 899.99),
(2, 1001, 104, 1, 79.99),
(3, 1002, 102, 1, 499.99),
(4, 1002, 104, 1, 19.99),
(5, 1003, 103, 1, 19.99);


USE ecommerce_db;

# INNER JOIN: Show orders with customer and product info
SELECT o.OrderID, c.Name AS CustomerName, p.ProductName, oi.Quantity
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
INNER JOIN OrderItems oi ON o.OrderID = oi.OrderID
INNER JOIN Products p ON oi.ProductID = p.ProductID;

# LEFT JOIN: List all customers and their orders 
SELECT c.Name, o.OrderID, o.TotalAmount
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID;

# RIGHT JOIN (if supported): List all orders and their customer 

SELECT o.OrderID, c.Name
FROM Orders o
RIGHT JOIN Customers c ON o.CustomerID = c.CustomerID;

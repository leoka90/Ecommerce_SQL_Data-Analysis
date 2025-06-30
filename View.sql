USE ecommerce_db;

# View: customer total spending
CREATE VIEW CustomerSpending AS
SELECT c.CustomerID, c.Name, SUM(o.TotalAmount) AS TotalSpent
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID;

SELECT * FROM CustomerSpending ORDER BY TotalSpent DESC;
USE ecommerce_db;

# Get products that are priced above the average product price
SELECT ProductName, Price
FROM Products
WHERE Price > (
    SELECT AVG(Price) FROM Products
);

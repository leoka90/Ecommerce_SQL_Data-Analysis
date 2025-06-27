USE ecommerce_db;

SHOW INDEX FROM Orders;
SHOW INDEX FROM Customers;

# often filtering by Country or OrderDate:
CREATE INDEX idx_customers_country ON Customers(Country);
CREATE INDEX idx_orders_date ON Orders(OrderDate);

# often group or order by customer name or product category
CREATE INDEX idx_customers_name ON Customers(Name);
CREATE INDEX idx_products_category ON Products(Category);




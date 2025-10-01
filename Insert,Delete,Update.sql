-- Add a new customer
INSERT INTO Customer (Name, Email, Address)
VALUES ('Aman Verma', 'aman.verma@example.com', 'Lucknow, India');

-- Add a product with all fields
INSERT INTO Product (ProductName, Price, Stock, CategoryID)
VALUES ('Smart Watch', 2499.00, 15, 1);


-- Insert a product with missing stock (defaults to 0)
INSERT INTO Product (ProductName, Price, CategoryID)
VALUES ('Notebook', 49.00, 2);

-- Insert a customer with unknown address
INSERT INTO Customer (Name, Email, Address)
VALUES ('Priya Singh', 'priya.singh@example.com', NULL);


-- Update stock for a product
UPDATE Product
SET Stock = 50
WHERE ProductName = 'Smart Watch';

-- Update address for a customer
UPDATE Customer
SET Address = 'Noida, India'
WHERE Email = 'priya.singh@example.com';


-- Delete a product with zero stock
DELETE FROM Product
WHERE Stock = 0;

-- Delete a customer by email
DELETE FROM Customer
WHERE Email = 'aman.verma@example.com';

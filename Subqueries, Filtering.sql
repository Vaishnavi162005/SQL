-- Show each customer with their total order amount
SELECT Name,
       (SELECT SUM(Amount) FROM Orders WHERE Orders.CustomerID = Customers.CustomerID) AS TotalSpent
FROM Customers;

-- Customers who placed orders above ₹2000
SELECT Name FROM Customers
WHERE CustomerID IN (
    SELECT CustomerID FROM Orders WHERE Amount > 2000
);

-- Average order amount per customer
SELECT Name, AvgAmount
FROM Customers
JOIN (
    SELECT CustomerID, AVG(Amount) AS AvgAmount
    FROM Orders
    GROUP BY CustomerID
) AS OrderSummary ON Customers.CustomerID = OrderSummary.CustomerID;

-- Customers who spent more than the average of all customers
SELECT Name FROM Customers
WHERE (SELECT SUM(Amount) FROM Orders WHERE Orders.CustomerID = Customers.CustomerID) >
      (SELECT AVG(Total) FROM (
          SELECT CustomerID, SUM(Amount) AS Total FROM Orders GROUP BY CustomerID
      ) AS Totals);

-- Customers who have placed at least one order
SELECT Name FROM Customers
WHERE EXISTS (
    SELECT 1 FROM Orders WHERE Orders.CustomerID = Customers.CustomerID
);

-- Customers who have placed at least one order
SELECT Name FROM Customers
WHERE EXISTS (
    SELECT 1 FROM Orders WHERE Orders.CustomerID = Customers.CustomerID
);

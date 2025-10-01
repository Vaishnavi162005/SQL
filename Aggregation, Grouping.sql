-- Total stock of all products
SELECT SUM(Stock) AS TotalStock FROM Product;

-- Average price of products
SELECT AVG(Price) AS AveragePrice FROM Product;

-- Count of products
SELECT COUNT(*) AS ProductCount FROM Product;

-- Maximum price
SELECT MAX(Price) AS HighestPrice FROM Product;

-- Minimum stock
SELECT MIN(Stock) AS LowestStock FROM Product;

-- Total stock per category
SELECT CategoryID, SUM(Stock) AS StockPerCategory
FROM Product
GROUP BY CategoryID;

-- Average price per category
SELECT CategoryID, AVG(Price) AS AvgPrice
FROM Product
GROUP BY CategoryID;

-- Categories with total stock > 50
SELECT CategoryID, SUM(Stock) AS TotalStock
FROM Product
GROUP BY CategoryID
HAVING SUM(Stock) > 50;

-- Categories with average price < 1000
SELECT CategoryID, AVG(Price) AS AvgPrice
FROM Product
GROUP BY CategoryID
HAVING AVG(Price) < 1000;


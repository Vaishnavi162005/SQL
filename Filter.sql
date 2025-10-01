-- Select all columns from Product
SELECT * FROM Product;

-- Select specific columns
SELECT ProductName, Price FROM Product;
 
 -- WHERE: Filter products with price > 1000
SELECT * FROM Product
WHERE Price > 1000;

-- AND: Filter products in category 1 with stock > 10
SELECT * FROM Product
WHERE CategoryID = 1 AND Stock > 10;

-- OR: Products with price < 500 OR stock < 20
SELECT * FROM Product
WHERE Price < 500 OR Stock < 20;

-- LIKE: Find products containing 'Book'
SELECT * FROM Product
WHERE ProductName LIKE '%Book%';

-- BETWEEN: Products priced between 500 and 1500
SELECT * FROM Product
WHERE Price BETWEEN 500 AND 1500;

-- Sort products by price ascending
SELECT * FROM Product
ORDER BY Price;

-- Sort products by price descending
SELECT * FROM Product
ORDER BY Price DESC;

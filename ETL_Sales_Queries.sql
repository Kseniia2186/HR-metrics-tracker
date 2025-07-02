-- 1. Total Revenue by Region
SELECT Region, SUM(Quantity * Price) AS TotalRevenue
FROM SalesData
GROUP BY Region
ORDER BY TotalRevenue DESC;

-- 2. Revenue by Product
SELECT Product, SUM(Quantity * Price) AS Revenue
FROM SalesData
GROUP BY Product
ORDER BY Revenue DESC;

-- 3. Monthly Sales
SELECT strftime('%Y-%m', Date) AS Month, SUM(Quantity * Price) AS MonthlySales
FROM SalesData
GROUP BY Month
ORDER BY Month;

-- 4. Average Order Value by Region 
SELECT Region, AVG(Quantity * Price) AS AverageOrderValue
FROM SalesData
GROUP BY Region;
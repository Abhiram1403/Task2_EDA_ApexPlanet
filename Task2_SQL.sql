DESCRIBE sales_dataset;
SELECT SUM(Total_Sales) AS Total_Sales
FROM sales_dataset;
SELECT COUNT(*) AS Total_Orders
FROM sales_dataset;
SELECT Product,
SUM(Total_Sales) AS Sales
FROM sales_dataset
GROUP BY Product
ORDER BY Sales DESC
LIMIT 5;
SELECT Category,
SUM(Total_Sales) AS Sales
FROM sales_dataset
GROUP BY Category
ORDER BY Sales DESC;
SELECT City,
SUM(Total_Sales) AS Sales
FROM sales_dataset
GROUP BY City
ORDER BY Sales DESC;
SELECT AVG(Total_Sales) AS Average_Sales
FROM sales_dataset;
SELECT Order_Date
FROM sales_dataset
LIMIT 10;
SELECT
    MONTH(Order_Date) AS Month,
    SUM(Total_Sales) AS Total_Sales
FROM sales_dataset
GROUP BY MONTH(Order_Date)
ORDER BY Month;
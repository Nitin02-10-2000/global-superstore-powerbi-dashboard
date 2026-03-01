SELECT 
    SUM(Sales) AS Total_Sales
FROM global_superstore_large;
SELECT 
    SUM(Profit) AS Total_Profit
FROM global_superstore_large;
SELECT 
    COUNT(DISTINCT [Order_ID]) AS Total_Orders
FROM global_superstore_large;
SELECT 
    COUNT(DISTINCT [Order_ID]) AS Total_Orders
FROM global_superstore_large;
SELECT 
    SUM(Quantity) AS Total_Quantity
FROM global_superstore_large;
SELECT 
    SUM(Sales) * 1.0 / COUNT(DISTINCT [Order_ID]) AS Avg_Order_Value
FROM global_superstore_large;
SELECT 
    YEAR([Order_Date])  AS Order_Year,
    MONTH([Order_Date]) AS Order_Month,
    DATENAME(MONTH, [Order_Date]) AS Month_Name,
    SUM(Sales) AS Monthly_Sales
FROM global_superstore_large
GROUP BY 
    YEAR([Order_Date]),
    MONTH([Order_Date]),
    DATENAME(MONTH, [Order_Date])
ORDER BY 
    Order_Year, Order_Month;
    SELECT 
    YEAR([Order_Date])  AS Order_Year,
    MONTH([Order_Date]) AS Order_Month,
    SUM(Profit) AS Monthly_Profit
FROM global_superstore_large
GROUP BY 
    YEAR([Order_Date]),
    MONTH([Order_Date])
ORDER BY 
    Order_Year, Order_Month;
    SELECT 
    DATENAME(WEEKDAY, [Order_Date]) AS Order_Day,
    COUNT(DISTINCT [Order_ID]) AS Total_Orders
FROM global_superstore_large
GROUP BY DATENAME(WEEKDAY, [Order_Date]);
SELECT 
    DATENAME(WEEKDAY, [Order_Date]) AS Order_Day,
    SUM(Sales) AS Total_Sales
FROM global_superstore_large
GROUP BY DATENAME(WEEKDAY, [Order_Date]);
SELECT 
    Category,
    SUM(Sales) AS Total_Sales
FROM global_superstore_large
GROUP BY Category;
SELECT 
    [Sub_Category],
    SUM(Sales) AS Total_Sales
FROM global_superstore_large
GROUP BY [Sub_Category]
ORDER BY Total_Sales DESC;
SELECT 
    Region,
    SUM(Profit) AS Total_Profit
FROM global_superstore_large
GROUP BY Region;
SELECT 
    [Order_Status],
    COUNT(DISTINCT [Order_ID]) AS Total_Orders
FROM global_superstore_large
GROUP BY [Order_Status];
SELECT TOP 5
    YEAR([Order_Date]) AS Order_Year,
    DATENAME(MONTH, [Order_Date]) AS Month_Name,
    SUM(Sales) AS Total_Sales
FROM global_superstore_large
GROUP BY 
    YEAR([Order_Date]),
    DATENAME(MONTH, [Order_Date])
ORDER BY Total_Sales DESC;
SELECT 
    (SUM(Profit) * 100.0 / SUM(Sales)) AS Profit_Margin_Percent
FROM global_superstore_large;

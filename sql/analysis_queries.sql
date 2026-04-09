-- Total Global Sales
SELECT SUM(Global_Sales) AS total_sales FROM games;

-- Top 5 Genres by Sales
SELECT Genre, SUM(Global_Sales) AS sales
FROM games
GROUP BY Genre
ORDER BY sales DESC
LIMIT 5;

-- Regional Sales Comparison
SELECT 
    SUM(NA_Sales) AS NA,
    SUM(EU_Sales) AS EU,
    SUM(JP_Sales) AS JP
FROM games;

-- Top Platforms
SELECT Platform, SUM(Global_Sales) AS sales
FROM games
GROUP BY Platform
ORDER BY sales DESC;

-- Yearly Trends
SELECT Year, SUM(Global_Sales) AS sales
FROM games
GROUP BY Year
ORDER BY Year;

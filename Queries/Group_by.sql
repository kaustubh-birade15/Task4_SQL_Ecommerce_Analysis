SELECT Country, SUM(UnitPrice * Quantity) AS Total_Sales
FROM "E-commerce_data"
GROUP BY Country
ORDER BY Total_Sales DESC;
-- Select basic data
SELECT InvoiceNo, Description, Quantity, UnitPrice
FROM "E-commerce_data";
-- 
-- -- WHERE: Get sales from the UK only
-- SELECT * 
-- FROM "E-commerce_data"
-- WHERE Country = 'United Kingdom';
-- 
-- -- ORDER BY: Top 10 most expensive products
-- SELECT Description, UnitPrice
-- FROM "E-commerce_data"
-- ORDER BY UnitPrice DESC
-- LIMIT 10;

-- GROUP BY: Sales by Country
-- SELECT Country, SUM(UnitPrice * Quantity) AS Total_Sales
-- FROM "E-commerce_data"
-- GROUP BY Country
-- ORDER BY Total_Sales DESC;

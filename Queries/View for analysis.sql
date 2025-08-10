-- Create a view for monthly sales
CREATE VIEW Monthly_Sales AS
SELECT STRFTIME('%Y-%m', InvoiceDate) AS Month,
       SUM(UnitPrice * Quantity) AS Sales
FROM "E-commerce_data"
GROUP BY Month;

-- Use the view
SELECT * FROM Monthly_Sales;

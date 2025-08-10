-- LEFT JOIN
SELECT e.StockCode, e.Description, p.Category
FROM "E-commerce_data" e
LEFT JOIN Product_Category p
ON e.StockCode = p.StockCode;
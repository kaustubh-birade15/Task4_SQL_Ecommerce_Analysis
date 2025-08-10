SELECT p.StockCode, p.Category, e.Description
FROM Product_Category p
LEFT JOIN "E-commerce_data" e
ON p.StockCode = e.StockCode;
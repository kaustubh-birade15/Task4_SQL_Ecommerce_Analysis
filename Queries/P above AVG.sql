SELECT Description, UnitPrice
FROM "E-commerce_data"
WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM "E-commerce_data");


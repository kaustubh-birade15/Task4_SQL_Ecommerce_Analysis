SELECT Country
FROM "E-commerce_data"
GROUP BY Country
HAVING SUM(UnitPrice * Quantity) > 10000;
-- Create a dummy category table
CREATE TABLE Product_Category (
    StockCode TEXT PRIMARY KEY,
    Category TEXT
);

-- Insert some example category data
INSERT INTO Product_Category (StockCode, Category)
VALUES ('85123A', 'Home Decor'),
       ('71053', 'Toys'),
       ('84406B', 'Kitchen');

-- INNER JOIN
SELECT e.StockCode, e.Description, p.Category, e.Quantity
FROM "E-commerce_data" e
INNER JOIN Product_Category p
ON e.StockCode = p.StockCode;
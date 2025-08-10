-- Create index on InvoiceDate for faster date filtering
CREATE INDEX idx_invoice_date ON "E-commerce_data"(InvoiceDate);

-- Create index on Country for faster country queries
CREATE INDEX idx_country ON "E-commerce_data"(Country);

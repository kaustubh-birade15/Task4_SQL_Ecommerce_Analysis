# 📊 Task 4 – SQL Data Analysis (E-commerce Dataset)

## 📌 Overview
This project demonstrates SQL skills using an **E-commerce dataset** stored in SQLite.  
It covers **data cleaning, joins, filtering, aggregation, subqueries, views, and indexing** to analyze sales, profits, and product performance.

---

## 📂 Dataset
- **Name:** E-commerce_data  
- **Format:** CSV imported into SQLite database  
- **Columns:**
  - `InvoiceNo` – Unique invoice number  
  - `StockCode` – Product code  
  - `Description` – Product description  
  - `Quantity` – Quantity sold  
  - `InvoiceDate` – Date of sale  
  - `UnitPrice` – Price per unit  
  - `CustomerID` – Unique customer ID  
  - `Country` – Country of purchase  

---

## 🛠️ Steps Performed

### 1️⃣ Data Import & Cleaning
- Imported the `data.csv` file into **SQLite**.
- Ensured correct **data types** for numeric and date fields.
- Created a **new cleaned table** `E_commerce_data_new` with:
  - `InvoiceNo`, `Quantity`, `CustomerID` as **INTEGER**
  - `UnitPrice` as **REAL**
  - `InvoiceDate` kept as TEXT for now
- Removed unnecessary NULL or duplicate values.

---

### 2️⃣ SQL Queries Executed

#### 📍 Filtering & Sorting
```sql
-- Get all orders from the UK
SELECT * 
FROM E_commerce_data_new
WHERE Country = 'United Kingdom';

-- Top 10 highest priced products
SELECT Description, UnitPrice
FROM E_commerce_data_new
ORDER BY UnitPrice DESC
LIMIT 10;

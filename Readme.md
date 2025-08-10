Here’s your **complete `README.md`** for **Task 4 – SQL E-Commerce Data Analysis** so you can directly upload it to GitHub:

---

# 📦 Task 4 – SQL E-Commerce Data Analysis

## 📌 Overview

This project is part of my **Data Analyst internship tasks**, where I performed **SQL-based data cleaning, transformation, and analysis** on an **E-commerce dataset**.
The goal was to clean the data, perform queries to answer business-related questions, and optimize performance using indexing.

---

## 📂 Dataset Information

* **File Name:** `data.csv`
* **Table Name:** `E-commerce_data`
* **Columns:**

  * `InvoiceNo` – Transaction number
  * `StockCode` – Product code
  * `Description` – Product description
  * `Quantity` – Quantity sold
  * `InvoiceDate` – Transaction date & time
  * `UnitPrice` – Price per unit
  * `CustomerID` – Unique customer ID
  * `Country` – Country of transaction

---

## 🎯 Objectives

* Import CSV into SQLite
* Adjust **data types** for accuracy and performance
* Perform filtering, sorting, grouping, and joining operations
* Create **subqueries** and use **aggregate functions** (`SUM`, `AVG`)
* Create **views** for frequent analysis
* Optimize queries with **indexes**
* Save all queries and output for documentation

---

## 🛠️ Steps Performed

### **1️⃣ Import Dataset into SQLite**

* Used **DB Browser for SQLite** to import `data.csv` into a table called `E-commerce_data`.

---

### **2️⃣ Change Data Types**

Converted columns for consistency:

```sql
CREATE TABLE E_commerce_data_new AS
SELECT  
    CAST(InvoiceNo AS INTEGER) AS InvoiceNo,
    StockCode,
    Description,
    CAST(Quantity AS INTEGER) AS Quantity,
    InvoiceDate,
    UnitPrice,
    CAST(CustomerID AS INTEGER) AS CustomerID,
    Country
FROM E_commerce_data;
```

---

### **3️⃣ Create Product Category Table for Joins**

```sql
CREATE TABLE Product_Category (
    StockCode TEXT PRIMARY KEY,
    Category TEXT
);

INSERT INTO Product_Category (StockCode, Category)
VALUES ('85123A', 'Home Decor'),
       ('71053', 'Toys'),
       ('84406B', 'Kitchen');
```

---

### **4️⃣ Queries Performed**

#### **a. SELECT, WHERE, ORDER BY**

```sql
SELECT * 
FROM "E-commerce_data"
WHERE Quantity > 10
ORDER BY UnitPrice DESC;
```

#### **b. GROUP BY with Aggregate**

```sql
SELECT Country, SUM(Quantity) AS Total_Quantity
FROM "E-commerce_data"
GROUP BY Country
ORDER BY Total_Quantity DESC;
```

#### **c. INNER JOIN**

```sql
SELECT e.StockCode, e.Description, p.Category, e.Quantity
FROM "E-commerce_data" e
INNER JOIN Product_Category p
ON e.StockCode = p.StockCode;
```

#### **d. LEFT JOIN**

```sql
SELECT e.StockCode, e.Description, p.Category
FROM "E-commerce_data" e
LEFT JOIN Product_Category p
ON e.StockCode = p.StockCode;
```

#### **e. RIGHT JOIN Simulation (SQLite doesn’t support RIGHT JOIN)**

```sql
SELECT p.StockCode, p.Category, e.Description
FROM Product_Category p
LEFT JOIN "E-commerce_data" e
ON p.StockCode = e.StockCode;
```

#### **f. Subquery Example**

```sql
SELECT *
FROM "E-commerce_data"
WHERE UnitPrice > (
    SELECT AVG(UnitPrice) 
    FROM "E-commerce_data"
);
```

---

### **5️⃣ Create Views for Analysis**

```sql
CREATE VIEW HighValueCustomers AS
SELECT CustomerID, SUM(UnitPrice * Quantity) AS TotalSpent
FROM "E-commerce_data"
GROUP BY CustomerID
HAVING TotalSpent > 1000;
```

---

### **6️⃣ Optimize Queries with Indexes**

```sql
CREATE INDEX idx_customer ON "E-commerce_data"(CustomerID);
CREATE INDEX idx_stockcode ON "E-commerce_data"(StockCode);
```

---

## 📁 Files in This Repository

| File Name      | Description                          |
| -------------- | ------------------------------------ |
| `data.csv`     | Original E-commerce dataset          |
| `queries.sql`  | All SQL queries executed             |
| `README.md`    | Documentation file                   |

---

## ▶️ How to Run This Project

1. Open **DB Browser for SQLite** (or SQLite CLI).
2. Import `data.csv` into a table named **E-commerce\_data**.
3. Open `queries.sql` and execute queries in order.
4. Verify results in the **screenshots** folder.

---

## 📸 Sample Output Screenshots

All query results are saved inside the **`/screenshots`** folder.

---

## 📌 Key Insights

* **Top Selling Products** identified using aggregate queries.
* **Country-wise sales distribution** analyzed using `GROUP BY`.
* **Customer spending patterns** revealed with subqueries and views.
* **Indexed columns** improve search and join speed.

---

## 📜 License

This project is for educational purposes as part of a **Data Analyst Internship Task**.

---

If you want, I can also **bundle all your `.sql` files + screenshots + README.md in a GitHub-ready folder structure** so you can upload it directly.
Do you want me to do that?

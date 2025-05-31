Here's a clean and well-structured **README.md** file you can use to upload your SQL project to GitHub. This will help others understand your code and the purpose behind each query.

---

## 📊 SQL Practice with Suzuki and Royal Enfield Sales Data

This project demonstrates the use of **SQL operations** such as table creation, data insertion, filtering, aggregation, joins, and set operations using two sample tables: `suzuki` and `royal_enfield`.

---

### 📁 Tables

#### `suzuki`

Stores 2-wheeler sales data from Suzuki.

| Column            | Type        |
| ----------------- | ----------- |
| channel\_id       | INT (PK)    |
| channel           | VARCHAR(20) |
| product           | VARCHAR(20) |
| geography         | VARCHAR(50) |
| period            | DATE        |
| sales\_pm         | INT         |
| profit\_per\_sale | INT         |

#### `royal_enfield`

Stores 2-wheeler sales data from Royal Enfield.

| Column            | Type        |
| ----------------- | ----------- |
| channel\_id       | INT (PK)    |
| channel           | VARCHAR(20) |
| product           | VARCHAR(20) |
| geography         | VARCHAR(50) |
| period            | DATE        |
| sales\_pm         | INT         |
| profit\_per\_sale | INT         |

---

### 📌 Queries Included

#### 🔍 Basic Filtering

```sql
SELECT * FROM suzuki WHERE geography = "mg road";
SELECT * FROM suzuki WHERE sales_pm > 1000;
SELECT channel, channel_id FROM royal_enfield WHERE sales_pm < 1000;
```

#### 🧠 Logical Operators

```sql
SELECT channel, channel_id FROM royal_enfield WHERE sales_pm < 1000 OR sales_pm > 500;
SELECT * FROM royal_enfield WHERE geography = "vv mohalla" AND sales_pm > 500;
SELECT * FROM royal_enfield WHERE channel = "classic-350" AND NOT sales_pm < 1000;
```

#### 📈 Aggregation Functions

```sql
SELECT COUNT(channel_id) FROM royal_enfield;
SELECT MAX(profit_per_sale) FROM royal_enfield;
SELECT MIN(sales_pm) FROM suzuki;
SELECT SUM(profit_per_sale) FROM suzuki;
```

#### 📊 Grouping and Aliasing

```sql
SELECT geography, SUM(sales_pm) AS total_sales_pm
FROM suzuki
GROUP BY geography;
```

#### 🔗 Joins

* **Inner Join**: Matches rows based on geography.

```sql
SELECT s.geography, s.sales_pm
FROM suzuki s 
INNER JOIN royal_enfield r ON s.geography = r.geography;
```

* **Left Outer Join**: All rows from Suzuki, matched with Royal Enfield where possible.

```sql
SELECT s.geography, s.sales_pm
FROM suzuki s 
LEFT OUTER JOIN royal_enfield r ON s.geography = r.geography;
```

* **Right Outer Join**: All rows from Royal Enfield, matched with Suzuki where possible.

```sql
SELECT s.geography, s.sales_pm
FROM suzuki s 
RIGHT OUTER JOIN royal_enfield r ON s.geography = r.geography;
```

* **Full Outer Join** (not directly supported in MySQL – use `UNION` workaround):

```sql
SELECT s.geography, s.sales_pm
FROM suzuki s
LEFT JOIN royal_enfield r ON s.geography = r.geography

UNION

SELECT r.geography, s.sales_pm
FROM suzuki s
RIGHT JOIN royal_enfield r ON s.geography = r.geography;
```

#### 🔁 Union Operation

```sql
SELECT * FROM suzuki
UNION
SELECT * FROM royal_enfield;
```

#### 🔎 Distinct Values

```sql
SELECT DISTINCT geography FROM royal_enfield;
```

---

### 📂 How to Use

1. Run the `CREATE TABLE` and `INSERT` queries in your MySQL environment.
2. Execute each SQL query section-wise to practice different SQL concepts.
3. Modify or expand the queries to explore deeper insights.

---

### ✅ Concepts Covered

* Table creation and insertion
* WHERE clause and filtering
* Logical operators (`AND`, `OR`, `NOT`)
* Aggregation (`COUNT`, `SUM`, `MIN`, `MAX`)
* GROUP BY and aliasing
* SQL joins (`INNER`, `LEFT`, `RIGHT`, `FULL`)
* UNION and DISTINCT operations


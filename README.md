# task6
# Task 6: Sales Trend Analysis Using Aggregations

##  Objective
Analyze monthly revenue and order volume using SQL aggregation techniques.

## Tools Used
- Dataset: `online_sales_dataset.csv`
- SQL dialect: SQLite (works with MySQL/PostgreSQL with minor syntax changes)
- Python (for data preview and CSV result generation)

##  Dataset Overview
The dataset contains records of online sales transactions, including:
- `InvoiceDate`: Date and time of the order
- `InvoiceNo`: Unique order number
- `Quantity` and `UnitPrice`: Used to calculate revenue

## SQL Analysis Steps
```sql
SELECT 
    STRFTIME('%Y', InvoiceDate) AS Year,
    STRFTIME('%m', InvoiceDate) AS Month,
    ROUND(SUM(Quantity * UnitPrice), 2) AS Total_Revenue,
    COUNT(DISTINCT InvoiceNo) AS Order_Count
FROM 
    online_sales
WHERE
    Quantity > 0 AND UnitPrice > 0
GROUP BY 
    Year, Month
ORDER BY 
    Year, Month;

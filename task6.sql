-- Create the table (if not already created)
CREATE TABLE online_sales (
    InvoiceNo INTEGER,
    StockCode TEXT,
    Description TEXT,
    Quantity INTEGER,
    InvoiceDate TEXT,
    UnitPrice REAL,
    CustomerID REAL,
    Country TEXT,
    Discount REAL,
    PaymentMethod TEXT,
    ShippingCost REAL,
    Category TEXT,
    SalesChannel TEXT,
    ReturnStatus TEXT,
    ShipmentProvider TEXT,
    WarehouseLocation TEXT,
    OrderPriority TEXT
);

-- Optional: Import CSV using your tool (e.g., SQLiteStudio or MySQL Workbench)

-- Query: Monthly Revenue and Order Volume Analysis
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

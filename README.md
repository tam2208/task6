# task6
# Task 6: Sales Trend Analysis Using Aggregations

## Objective
Analyze monthly revenue and order volume from the `online_sales_dataset.csv`.

## Tools Used
- SQL (compatible with SQLite / MySQL / PostgreSQL)
- Python (for result preview)
- Pandas (for local testing)

## Dataset Fields Used
- `InvoiceNo` → acts as `order_id`
- `InvoiceDate` → order date
- `Quantity` and `UnitPrice` → used to compute `Revenue`

## SQL Logic
1. Extract Year and Month from `InvoiceDate`
2. Group by Year and Month
3. Compute:
   - `SUM(Quantity * UnitPrice)` → Total Revenue
   - `COUNT(DISTINCT InvoiceNo)` → Order Count
4. Order results by Year and Month

## Sample SQL Output Format

| Year | Month | Total_Revenue | Order_Count |
|------|-------|----------------|--------------|
| 2020 | 1     | 12567.89       | 938          |
| 2020 | 2     | 14203.54       | 1003         |
| 2020 | 3     | 15456.32       | 1107         |

## How to Run
1. Create a table using the provided schema.
2. Import the dataset into your SQL environment.
3. Run the SQL script from `task6.sql`.

---

## Notes
- Make sure to clean negative values (returns/errors).
- Adjust `STRFTIME()` to `EXTRACT()` if not using SQLite.


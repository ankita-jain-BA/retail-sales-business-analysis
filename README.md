# Retail Sales & Business Performance Analysis

**Author:** Ankita Jain  
**Project:** Business Analytics / SQL case study  
**Tools:** SQL (SQLite), CSV  
**Dataset:** Synthetic practice data — not real company/customer data.

## Business problem
A retail business wants to understand sales performance across time, products, categories, customers and cities to support better operational and marketing decisions.

## Objectives
- Track monthly revenue and order volume.
- Identify top products and categories.
- Compare city performance.
- Identify repeat customers.
- Explore revenue across discount bands.

## Dataset
`data/retail_sales.csv` contains 500 synthetic order-line records.

| Column | Meaning |
|---|---|
| order_id | Unique order identifier for each sample line |
| order_date | Transaction date |
| customer_id | Synthetic customer ID |
| city | City |
| product_id / product_name | Product identifier and name |
| category | Product category |
| quantity | Units purchased |
| list_price | Price before discount |
| discount_rate | Discount fraction |
| unit_selling_price | Price after discount |
| revenue | Quantity multiplied by selling price |

## SQL concepts demonstrated
SELECT, GROUP BY, ORDER BY, COUNT, SUM, DISTINCT, CASE, HAVING, and aggregation.

## How to run
1. Download `data/retail_sales.csv`.
2. Open DB Browser for SQLite.
3. Create a database and import the CSV as a table named `retail_sales`.
4. Open `sql/retail_sales_analysis.sql` and run the queries.
5. Review the calculated summaries in `outputs/`.

## Results and recommendations
See [`outputs/key_findings.md`](outputs/key_findings.md).

## Limitations
The dataset is synthetic. Cost, returns, inventory and shipping data are not included, so profit margin, return rate and stock-out analysis cannot be calculated.

## Next steps
- Build a Power BI dashboard from the CSV.
- Add data quality checks and customer cohort analysis.
- Extend the dataset with cost and returns to analyse profit and product returns.

This is a self-directed practice project, not work completed for a real employer or client.

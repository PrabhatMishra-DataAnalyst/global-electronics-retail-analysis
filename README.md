# Global Electronics Retail Analysis

## Project Overview
An end-to-end retail analytics project using PostgreSQL and Power BI to analyze sales performance, product profitability, customer distribution, and store/channel performance.

The project covers raw CSV ingestion, data cleaning, validation, relational data modeling, SQL analysis, DAX measures, and interactive dashboard development.

## Tools & Technologies
- **PostgreSQL 18** — data storage, cleaning, SQL queries, joins, and analytical views
- **pgAdmin 4** — database management
- **Power BI Desktop** — data modeling, DAX measures, visualizations, and interactive reporting
- **Power Query** — data type checks and transformation validation

## Dataset
The project uses five datasets:
- Customers
- Products
- Stores
- Sales
- Exchange Rates

The sales dataset contains 62,884 rows covering January 2016 through February 20, 2021.

## Data Preparation
- Imported CSV files into staging tables.
- Cleaned and converted data types.
- Validated primary keys and duplicate records.
- Created dimension tables and a sales fact table.
- Established relationships between sales, customers, products, stores, and exchange rates.
- Created a SQL analytical view for sales and profitability analysis.
- Validated missing exchange rates and USD calculations.

## Power BI Report Pages
1. **Executive Overview** — headline KPIs and monthly sales trends.
2. **Product Analysis** — top products, category performance, and estimated product profitability.
3. **Store & Channel Analysis** — store performance and online versus physical-store sales.
4. **Customer Analysis** — top customers and customer distribution by country.

## Key Metrics
- Estimated Sales: approximately **$55.76 million**
- Estimated Gross Profit: approximately **$32.66 million**
- Estimated Gross Profit Margin: approximately **58.58%**
- Total Orders: **26,326**
- Unique Customers: **11,887**

## Important Methodology Note
Sales and gross profit are estimates calculated using product list prices and unit costs multiplied by quantities. They should not be interpreted as actual realized revenue or profit because transaction-level selling prices, discounts, and other costs may not be fully represented.

The 2021 data covers only January 1 through February 20, 2021, so it is not directly comparable with full calendar years.

## Skills Demonstrated
SQL data preparation, data validation, relational data modeling, joins, analytical views, Power BI data modeling, DAX measures, KPI design, interactive slicers, and business reporting.

## Repository Structure
- `sql/` — SQL scripts
- `power-bi/` — Power BI report
- `screenshots/` — report screenshots
- `documentation/` — methodology, data model, and KPI definitions

## Future Improvements
- Add more advanced DAX time-intelligence analysis.
- Improve product and store performance comparisons.
- Add automated data refresh and additional data-quality checks.

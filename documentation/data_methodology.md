# Data Methodology

## 1. Project Objective
Analyze retail sales performance using PostgreSQL for data preparation and Power BI for interactive reporting.

## 2. Dataset
The project uses five CSV datasets:
- Customers
- Products
- Stores
- Sales
- Exchange Rates

The sales dataset contains 62,884 rows covering January 2016 to February 20, 2021.

## 3. Data Preparation
- Imported CSV data into PostgreSQL staging tables.
- Cleaned and converted data types where required.
- Validated primary keys and duplicate sales order-line combinations.
- Checked relationships between sales and customer, product, and store dimensions.
- Validated exchange-rate coverage using transaction date and currency.

## 4. Data Model
The model uses a sales fact table connected to customer, product, and store dimension tables. Exchange rates support currency-related analysis.

## 5. KPI Calculations
- **Estimated Sales:** Quantity × Product Unit Price USD
- **Estimated Product Cost:** Quantity × Product Unit Cost USD
- **Estimated Gross Profit:** Estimated Sales − Estimated Product Cost
- **Estimated Gross Profit Margin:** Estimated Gross Profit ÷ Estimated Sales
- **Total Orders:** Distinct count of order numbers
- **Unique Customers:** Distinct count of customer keys

## 6. Important Limitations
Sales and profit figures are estimates calculated using product prices and costs. They should not be interpreted as actual realized revenue or accounting profit.

The 2021 dataset covers only part of the year, through February 20, so annual comparisons involving 2021 are incomplete.

Delivery dates are missing for physical-store transactions in this dataset. Missing delivery dates are retained rather than treated as actual delivery dates.

## 7. Reporting
The Power BI report contains:
- Executive Overview
- Product Analysis
- Store & Channel Analysis
- Customer Analysis

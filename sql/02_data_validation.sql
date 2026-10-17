
-- Global Electronics Retail Analysis
-- Step 2: Data quality validation

-- 1. Validate sales row count
SELECT COUNT(*) AS total_sales_rows
FROM fact_sales;

-- 2. Check duplicate order-line combinations
SELECT
    order_number,
    line_item,
    COUNT(*) AS duplicate_count
FROM fact_sales
GROUP BY order_number, line_item
HAVING COUNT(*) > 1;

-- 3. Check missing customer, product, and store keys
SELECT
    COUNT(*) FILTER (WHERE customer_key IS NULL) AS missing_customer_keys,
    COUNT(*) FILTER (WHERE product_key IS NULL) AS missing_product_keys,
    COUNT(*) FILTER (WHERE store_key IS NULL) AS missing_store_keys
FROM fact_sales;

-- 4. Check valid exchange-rate coverage in the analytical view
SELECT
    COUNT(*) AS total_rows,
    COUNT(*) FILTER (WHERE exchange_rate IS NULL)
        AS missing_exchange_rates,
    COUNT(*) FILTER (WHERE sales_amount_usd IS NULL)
        AS missing_usd_amounts
FROM vw_sales_analytics;

-- 5. Check sales by currency
SELECT
    currency_code,
    COUNT(*) AS sales_rows
FROM fact_sales
GROUP BY currency_code
ORDER BY currency_code;

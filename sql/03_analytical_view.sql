
-- Global Electronics Retail Analysis
-- Step 3: Create the sales analytics view

CREATE OR REPLACE VIEW vw_sales_analytics AS
SELECT
    s.order_number,
    s.line_item,
    s.order_date,
    s.delivery_date,
    s.customerkey AS customer_key,
    s.storekey AS store_key,
    s.productkey AS product_key,
    s.quantity,
    s.currency_code,
    p.product_name,
    p.brand,
    p.category,
    c.country AS customer_country,
    st.country AS store_country,
    st.state AS store_state,
    s.quantity * p.unit_price_usd AS sales_amount_usd,
    s.quantity * p.unit_cost_usd AS product_cost_usd,
    s.quantity * (p.unit_price_usd - p.unit_cost_usd)
        AS gross_profit_usd,
    er.exchange AS exchange_rate
FROM fact_sales s
JOIN dim_products p
    ON s.productkey = p.product_key
JOIN dim_customers c
    ON s.customerkey = c.customer_key
JOIN dim_stores st
    ON s.storekey = st.store_key
LEFT JOIN dim_exchange_rates er
    ON s.order_date = er.rate_date
   AND UPPER(TRIM(s.currency_code)) = UPPER(TRIM(er.currency));

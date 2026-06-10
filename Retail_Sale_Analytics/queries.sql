-- Overall Business Summary

SELECT
    ROUND(SUM("Revenue"), 2) AS total_revenue,
    ROUND(SUM("Profit"), 2) AS total_profit,
    COUNT(DISTINCT "Invoice") AS total_orders,
    COUNT(DISTINCT "Customer") AS total_customers
FROM retail_data;


-- Revenue by Country

SELECT
    "Country",
    ROUND(SUM("Revenue"), 2) AS revenue
FROM retail_data
GROUP BY "Country"
ORDER BY revenue DESC;


-- Profit by Country

SELECT
    "Country",
    ROUND(SUM("Profit"), 2) AS profit
FROM retail_data
GROUP BY "Country"
ORDER BY profit DESC;


-- Monthly Revenue Trend

SELECT
    "Month",
    ROUND(SUM("Revenue"), 2) AS revenue
FROM retail_data
GROUP BY "Month"
ORDER BY "Month";


-- Top 10 Products by Revenue

SELECT
    "Description",
    ROUND(SUM("Revenue"), 2) AS revenue
FROM retail_data
GROUP BY "Description"
ORDER BY revenue DESC
LIMIT 10;


-- Top 10 Products by Profit

SELECT
    "Description",
    ROUND(SUM("Profit"), 2) AS profit
FROM retail_data
GROUP BY "Description"
ORDER BY profit DESC
LIMIT 10;


-- Top 10 Products by Quantity Sold

SELECT
    "Description",
    SUM("Quantity") AS quantity_sold
FROM retail_data
GROUP BY "Description"
ORDER BY quantity_sold DESC
LIMIT 10;


-- Top 10 Customers by Revenue

SELECT
    "Customer",
    ROUND(SUM("Revenue"), 2) AS revenue
FROM retail_data
WHERE "Customer" IS NOT NULL
GROUP BY "Customer"
ORDER BY revenue DESC
LIMIT 10;


-- Top 10 Customers by Profit

SELECT
    "Customer",
    ROUND(SUM("Profit"), 2) AS profit
FROM retail_data
WHERE "Customer" IS NOT NULL
GROUP BY "Customer"
ORDER BY profit DESC
LIMIT 10;
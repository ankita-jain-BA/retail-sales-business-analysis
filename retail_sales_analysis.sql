-- Import data/retail_sales.csv as table retail_sales in SQLite.
-- 1. Dataset overview
SELECT COUNT(*) AS order_lines, COUNT(DISTINCT order_id) AS orders,
       COUNT(DISTINCT customer_id) AS customers FROM retail_sales;

-- 2. Monthly revenue
SELECT substr(order_date,1,7) AS month, ROUND(SUM(revenue),2) AS revenue,
       COUNT(DISTINCT order_id) AS orders
FROM retail_sales GROUP BY month ORDER BY month;

-- 3. Category performance
SELECT category, ROUND(SUM(revenue),2) AS revenue, SUM(quantity) AS units
FROM retail_sales GROUP BY category ORDER BY revenue DESC;

-- 4. Top 10 products
SELECT product_name, SUM(quantity) AS units, ROUND(SUM(revenue),2) AS revenue
FROM retail_sales GROUP BY product_id, product_name ORDER BY revenue DESC LIMIT 10;

-- 5. City performance
SELECT city, COUNT(DISTINCT order_id) AS orders, ROUND(SUM(revenue),2) AS revenue
FROM retail_sales GROUP BY city ORDER BY revenue DESC;

-- 6. Repeat customers
SELECT customer_id, COUNT(DISTINCT order_id) AS orders, ROUND(SUM(revenue),2) AS lifetime_revenue
FROM retail_sales GROUP BY customer_id HAVING COUNT(DISTINCT order_id)>1
ORDER BY lifetime_revenue DESC;

-- 7. Discount bands
SELECT CASE WHEN discount_rate=0 THEN 'No discount'
            WHEN discount_rate<=0.05 THEN 'Up to 5%'
            WHEN discount_rate<=0.10 THEN '6% to 10%'
            ELSE 'Above 10%' END AS discount_band,
       COUNT(*) AS order_lines, ROUND(SUM(revenue),2) AS revenue
FROM retail_sales GROUP BY discount_band ORDER BY discount_band;

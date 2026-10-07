SELECT TOP 10 *
FROM ecommerce_sales

SELECT COUNT (*) AS total_rows
FROM ecommerce_sales

-- 1. What is the total revenue?

SELECT
	SUM(total_price) AS total_revenue 
FROM ecommerce_sales;

-- 2. How many unique customers do we have?

SELECT 
	COUNT (DISTINCT customer_id) AS total_customer
FROM ecommerce_sales;

-- 3. What is the total quantity of products sold?

SELECT 
	SUM(quantity) AS total_quantity_sold
FROM ecommerce_sales;

-- 4. How many orders were placed?

SELECT
	COUNT(DISTINCT Order_ID) AS total_orders
FROM ecommerce_sales;

-- 5. What is the average order value?

SELECT
	AVG(total_price) AS average_order_value
FROM ecommerce_sales;

-- Product Performance

-- 6. What is the top 2 best selling products?

SELECT TOP 2
	product,
	SUM(quantity) AS quantity_sold
FROM ecommerce_sales
GROUP BY product
ORDER BY quantity_sold DESC;

-- 7. What are the bottom 2 selling products?

SELECT TOP 2
	product,
	SUM(quantity) AS quantity_sold
FROM ecommerce_sales
GROUP BY product
ORDER BY quantity_sold ASC;

-- 8. Which product generated the highest revenue?

SELECT TOP 1
	product,
	SUM(total_price) AS total_revenue,
FROM ecommerce_sales
GROUP BY product
ORDER BY total_revenue DESC;

-- 9. How many quantity and revenue did each product generate?

SELECT 
	product,
	SUM(quantity) AS quantity_sold,
	SUM(total_price) AS total_revenue
FROM ecommerce_sales
GROUP BY product
ORDER BY total_revenue DESC;

-- Customer & Time Analysis

-- 10. How many unique customers placed orders each year?

SELECT 
	Year([Date]) AS order_year,
	COUNT(DISTINCT customer_id) AS customers
FROM ecommerce_sales
GROUP BY Year([Date])
ORDER BY order_year;

-- 11. What is the monthly sales trend?

SELECT 
	Year([Date]) AS sales_year,
	Month([Date]) AS sales_month,
	SUM(total_price) AS monthly_revenue
FROM ecommerce_sales
GROUP BY 
	Year([Date]),
	Month([Date])
ORDER BY 
	sales_year,
	sales_month;

-- 12. what is the yearly sales trend?

SELECT 
	Year([Date]) AS sales_year,
	SUM(total_price) AS yearly_revenue
FROM ecommerce_sales
GROUP BY Year([Date])
ORDER BY sales_year;


-- Payment Analysis

-- 13. What is the most used payment method?

SELECT TOP 1
	payment_method,
	COUNT(DISTINCT order_id) AS number_of_orders 
FROM ecommerce_sales
GROUP BY payment_method
ORDER BY number_of_orders DESC;

-- 14. Which payment method generated the highest revenue?

SELECT TOP 1
	payment_method,
	SUM(total_price) AS total_revenue
FROM ecommerce_sales
GROUP BY payment_method
ORDER BY total_revenue DESC;

-- 15. How much revenue did each payment method generate?

SELECT
	payment_method,
	SUM(total_price) AS total_revenue
FROM ecommerce_sales
GROUP BY payment_method
ORDER BY total_revenue DESC;


-- Order status

-- 16. What is the distribution of order statuses?

SELECT 
	order_status,
	COUNT(DISTINCT order_id) AS number_of_orders
FROM ecommerce_sales
GROUP BY order_status
ORDER BY number_of_orders;

-- 17. How many orders are pending each month?

SELECT
	Year([Date]) AS order_year,
	Month([Date]) AS order_month,
	COUNT(DISTINCT order_id) AS pending_orders
FROM ecommerce_sales
WHERE order_status = 'pending'
GROUP BY 
	Year([Date]),
	Month([Date])
ORDER BY 
	order_year,
	order_month;

-- 18. How many orders were cancelled each year?

SELECT 
	Year([Date]) AS order_year,
	COUNT(DISTINCT order_id) AS cancelled_order
FROM ecommerce_sales
WHERE order_status = 'cancelled'
GROUP BY Year([Date])
ORDER BY order_year;

-- Coupon code Analysis

-- 19. Do customers who use coupons have a higher average order value?

SELECT 
	Coupon_Code,
	COUNT(DISTINCT order_id) AS total_orders,
	SUM(Total_Price) AS total_revenue,
	AVG(Total_Price) AS average_order_value
FROM ecommerce_sales
GROUP BY Coupon_code
ORDER BY average_order_value DESC;

-- 20. Which coupon code is used most frequently?

SELECT TOP 1
	Coupon_Code,
	COUNT(DISTINCT order_id) AS times_used
FROM ecommerce_sales
WHERE coupon_code <> 'NO COUPON'
GROUP BY coupon_code
ORDER BY times_used DESC;

-- 21. Which year had the highest coupon usage?

SELECT 
	Year([Date]) AS order_year,
	COUNT(DISTINCT order_id) AS coupon_orders
FROM ecommerce_sales
WHERE coupon_code <> 'NO COUPON'
GROUP BY Year([Date])
ORDER BY coupon_orders DESC;
-- 22. How much revenue was generated from coupon orders?

SELECT 
	coupon_code,
	COUNT(DISTINCT order_id) AS number_of_orders,
	SUM(total_price) AS total_revenue
FROM ecommerce_sales
WHERE coupon_code <> 'NO COUPON'
GROUP BY coupon_code
ORDER BY total_revenue DESC;

-- Referral Analysis

-- 23. Which referral source generated the most orders?

SELECT 
	referral_source,
	COUNT(DISTINCT order_id) AS number_of_orders
FROM ecommerce_sales
GROUP BY referral_source
ORDER BY number_of_orders DESC;

-- 24. Which referral source generated the most revenue?

SELECT 
	referral_source,
	SUM(total_price) AS total_revenue
FROM ecommerce_sales
GROUP BY referral_source
ORDER BY total_revenue DESC;

-- Delivered product performance

-- 25. Which products generate the most revenue from delivered orders?

SELECT 
	referral_source,
	SUM(total_price) AS total_revenue
FROM ecommerce_sales
GROUP BY referral_source
ORDER BY total_revenue DESC;


# Project 3: E-Commerce Sales Analysis Using SQL

## Project Overview

This project focused on analyzing an e-commerce sales dataset using SQL to extract meaningful business insights.

The analysis covered sales performance, customer activity, product performance, payment methods, order status, coupon usage, referral sources, and sales trends.

## Dataset

- 1,200 rows
- 14 columns
- Data period: January 2023 – June 2025

## Goal

The goal of this project was to use SQL queries to extract insights from the dataset and answer key business questions.

## Tool Used

- Miscrosft SQL Server Management Studio (SSMSS)

## Methodology 

The Analysis was performed using SQL queries and functions such as:

- WHERE to filter records
- GROUP BY to categorize and summarize data
- ORDER BY to rank results
- COUNT() to count records and unique customers
- SUM() to calculate total sales, revenue, and quantities
- AVG() to calculate average order values
- DISTINCT to identify unique customers and orders
- Date functions such ad YEAR() and MONTH() to analyze sales trends

## Business Questions and Key Findings

### 1. What is the total revenue?

| Total Revenue |
|---:|
| $1,264,761.96 |

### 2. How many unique customers do we have?

| Unique Customers |
|---:|
| 1,189 |

### 3. What is the total quantity of products sold?

| Total Quantity Sold |
|---:|
| 3,535 |

### 4. How many orders were placed?

| Total Orders |
|---:|
| 1,200 |

### 5. What is the average order value?

| Average Order Value |
|---:|
| $1,053.97 |

### 6. What are the top 2 best-selling products?

| Product | Quantity Sold |
|---|---:|
| Chair | 562 |
| Printer | 542 |

### 7. What are the bottom 2 least-selling products?

| Product | Quantity Sold |
|---|---:|
| Phone | 411 |
| Monitor | 480 |

### 6. What are the top 2 best-selling products?

| Product | Quantity Sold |
|---|---:|
| Chair | 562 |
| Printer | 542 |

### 7. What are the bottom 2 least-selling products?

| Product | Quantity Sold |
|---|---:|
| Phone | 411 |
| Monitor | 480 |

### 8. Which product generated the highest revenue?

| Product | Total Revenue |
|---|---:|
| Chair | $195,620.11 |

### 9. How much quantity and revenue did each product generate?

| Product | Quantity Sold | Total Revenue |
|---|---:|---:|
| Chair | 562 | $195,620.11 |
| Printer | 542 | $195,612.61 |
| Laptop | 535 | $192,126.56 |
| Tablet | 497 | $186,568.95 |
| Monitor | 480 | $175,651.41 |
| Desk | 508 | $167,459.93 |
| Phone | 411 | $151,722.39 |

### 10. How many unique customers placed orders each year?

| Year | Unique Customers |
|---|---:|
| 2023 | 510 |
| 2024 | 458 |
| 2025 | 231 |

> Note: 2025 contains data from January to June only.

### 11. What is the monthly sales trend?

| Year | Month | Monthly Revenue |
|---|---|---:|
| 2023 | January | $56,685.75 |
| 2023 | February | $40,117.66 |
| 2023 | March | $48,609.37 |
| 2023 | April | $27,751.71 |
| 2023 | May | $63,836.84 |
| 2023 | June | $49,500.19 |
| 2023 | July | $42,820.66 |
| 2023 | August | $54,352.14 |
| 2023 | September | $29,526.67 |
| 2023 | October | $52,607.85 |
| 2023 | November | $43,079.67 |
| 2023 | December | $43,754.73 |
| 2024 | January | $38,528.08 |
| 2024 | February | $36,909.57 |
| 2024 | March | $36,030.90 |
| 2024 | April | $49,613.14 |
| 2024 | May | $27,909.11 |
| 2024 | June | $68,068.54 |
| 2024 | July | $42,963.98 |
| 2024 | August | $31,991.07 |
| 2024 | September | $39,794.98 |
| 2024 | October | $37,226.97 |
| 2024 | November | $32,413.76 |
| 2024 | December | $38,785.77 |
| 2025 | January | $29,099.40 |
| 2025 | February | $35,317.55 |
| 2025 | March | $39,200.66 |
| 2025 | April | $31,821.20 |
| 2025 | May | $43,396.64 |
| 2025 | June | $53,047.40 |

### 12. What is the yearly sales trend?

| Year | Yearly Revenue |
|---|---:|
| 2023 | $552,643.24 |
| 2024 | $480,235.87 |
| 2025 | $231,882.85 |

> Note: 2025 contains data from January to June only.

### 13. What is the most-used payment method?

| Payment Method | Number of Orders |
|---|---:|
| Online | 258 |

### 14. Which payment method generated the highest revenue?

| Payment Method | Total Revenue |
|---|---:|
| Credit Card | $263,847.63 |

### 15. How much revenue did each payment method generate?

| Payment Method | Total Revenue |
|---|---:|
| Credit Card | $263,847.63 |
| Online | $262,442.94 |
| Cash | $259,786.29 |
| Gift Card | $246,323.92 |
| Debit Card | $232,361.18 |

### 16. What is the distribution of order statuses?

| Order Status | Number of Orders |
|---|---:|
| Cancelled | 250 |
| Returned | 247 |
| Pending | 237 |
| Shipped | 235 |
| Delivered | 231 |

### 17. How many orders are pending each month?

| Year | Month | Pending Orders |
|---|---|---:|
| 2023 | January | 18 |
| 2023 | February | 8 |
| 2023 | March | 8 |
| 2023 | April | 6 |
| 2023 | May | 9 |
| 2023 | June | 5 |
| 2023 | July | 14 |
| 2023 | August | 9 |
| 2023 | September | 9 |
| 2023 | October | 5 |
| 2023 | November | 12 |
| 2023 | December | 14 |
| 2024 | January | 6 |
| 2024 | February | 8 |
| 2024 | March | 4 |
| 2024 | April | 9 |
| 2024 | May | 6 |
| 2024 | June | 9 |
| 2024 | July | 11 |
| 2024 | August | 3 |
| 2024 | September | 7 |
| 2024 | October | 6 |
| 2024 | November | 5 |
| 2024 | December | 8 |
| 2025 | January | 8 |
| 2025 | February | 5 |
| 2025 | March | 6 |
| 2025 | April | 2 |
| 2025 | May | 6 |
| 2025 | June | 11 |

### 18. How many orders were cancelled each year?

| Year | Cancelled Orders |
|---|---:|
| 2023 | 107 |
| 2024 | 83 |
| 2025 | 60 |

> Note: 2025 contains data from January to June only.

### 19. Do customers who use coupons have a higher average order value?

| Coupon Code | Total Orders | Total Revenue | Average Order Value |
|---|---:|---:|---:|
| FREESHIP | 313 | $335,036.99 | $1,070.41 |
| SAVE10 | 286 | $304,840.02 | $1,065.87 |
| NO COUPON | 309 | $322,401.41 | $1,043.37 |
| WINTER15 | 292 | $302,483.54 | $1,035.90 |

### 20. Which coupon code is used most frequently?

| Coupon Code | Times Used |
|---|---:|
| FREESHIP | 313 |

### 21. Which year had the highest coupon usage?

| Year | Coupon Orders |
|---|---:|
| 2023 | 377 |
| 2024 | 341 |
| 2025 | 173 |

> Note: 2025 contains data from January to June only.

### 22. Which coupon code generated the most revenue?

| Coupon Code | Number of Orders | Total Revenue |
|---|---:|---:|
| FREESHIP | 313 | $335,036.99 |
| SAVE10 | 286 | $304,840.02 |
| WINTER15 | 292 | $302,483.54 |

### 23. Which referral source generated the most orders?

| Referral Source | Number of Orders |
|---|---:|
| Instagram | 259 |
| Email | 250 |
| Google | 241 |
| Facebook | 228 |
| Referral | 222 |

### 24. Which referral source generated the most revenue?

| Referral Source | Total Revenue |
|---|---:|
| Instagram | $275,285.45 |
| Email | $261,808.55 |
| Google | $250,441.48 |
| Facebook | $250,410.90 |
| Referral | $226,815.58 |

### 25. How much revenue did each referral source generate?

| Referral Source | Total Revenue |
|---|---:|
| Instagram | $275,285.45 |
| Email | $261,808.55 |
| Google | $250,441.48 |
| Facebook | $250,410.90 |
| Referral | $226,815.58 |

## Key Insights

- Total revenue was approximately **$1.26 million** from 1,200 orders.
- There were **1,189 unique customers**.
- **Chair** was the top-selling product by quantity and generated the highest revenue.
- **Phone** had the lowest quantity sold.
- **Online** was the most-used payment method.
- **Credit Card** generated the highest payment-method revenue.
- **Cancelled** orders had the highest number of orders among the different order statuses.
- **FREESHIP** was the most frequently used coupon and generated the highest coupon revenue.
- **Instagram** generated the highest number of orders and the highest referral-source revenue.

## Conclusion

This project helped me strengthen my SQL skills by using business questions to analyze an e-commerce dataset.

The analysis demonstrated how SQL can be used to calculate key performance metrics, identify trends, compare product and payment performance, and understand customer and marketing behaviour.

It also improved my ability to transform raw data into meaningful insights that can support data-driven business decisions.

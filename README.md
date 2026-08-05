# Customer Segmentation using RFM Analysis (SQL)

## Project Overview

## Business Problem

Businesses often market to every customer equally, resulting in inefficient spending.

This project uses RFM Analysis (Recency, Frequency and Monetary) to identify high-value customers and recommend targeted marketing strategies.
  
  Customers
+----------------------------------+
| customer_id (PK)                 |
| customer_name                    |
| city                             |
+----------------------------------+
              │
              │ 1
              │
              │
              │ *
+----------------------------------+
| Orders                           |
+----------------------------------+
| order_id (PK)                    |
| customer_id (FK)                 |
| order_date                       |
| amount                           |
+----------------------------------+
## Objectives

- Calculate Recency
- Calculate Frequency
- Calculate Monetary
- Score customers using NTILE(5)
- Segment customers using CASE statements
- Generate business insights

## Tools

- PostgreSQL
- SQL
- GitHub

## SQL Concepts Used

- JOIN
- GROUP BY
- Aggregate Functions
- CTE
- Window Functions
- NTILE()
- CASE
- ORDER BY

##  Business Questions

1. Who are the highest-value customers?

2. Which customers are at risk?

3. Which segment contributes most revenue?

4. Which customers should receive retention campaigns?

5. Which customers should receive promotional offers?


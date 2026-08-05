---Top 5 highest spending customers
SELECT
customer_name,
SUM(amount) AS total_spent
FROM customers c
JOIN orders o
ON c.customer_id=o.customer_id
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 5;


--Total Revenue
SELECT
SUM(amount) AS total_revenue
FROM orders;

--Average Order Value
SELECT
ROUND(AVG(amount),2)
AS average_order_value
FROM orders;

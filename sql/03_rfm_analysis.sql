
Project : Customer Segmentation using RFM Analysis
Author  : Abhay Thukral
Database: PostgreSQL



-- Calculate RFM Metrics


WITH rfm_base AS (

SELECT
    c.customer_id,
    c.customer_name,

    DATE '2026-01-01' - MAX(o.order_date) AS recency,

    COUNT(o.order_id) AS frequency,

    SUM(o.amount) AS monetary

FROM customers c

JOIN orders o
ON c.customer_id = o.customer_id

GROUP BY
    c.customer_id,
    c.customer_name
),


--  Generate RFM Scores


rfm_scores AS (

SELECT
    *,

    6 - NTILE(5) OVER (ORDER BY recency ASC) AS r_score,

    6 - NTILE(5) OVER (ORDER BY frequency DESC) AS f_score,

    6 - NTILE(5) OVER (ORDER BY monetary DESC) AS m_score

FROM rfm_base
)


--  Customer Segmentation


SELECT

customer_id,

customer_name,

recency,

frequency,

monetary,

r_score,

f_score,

m_score,

CASE

WHEN r_score >=4
AND f_score>=4
AND m_score>=4
THEN 'Champion'

WHEN r_score>=3
AND f_score>=4
THEN 'Loyal Customer'

WHEN r_score>=4
AND f_score<=3
THEN 'Potential Loyalist'

WHEN r_score<=2
AND f_score>=3
THEN 'At Risk'

WHEN r_score<=2
AND f_score<=2
THEN 'Lost Customer'

ELSE 'Needs Attention'

END AS customer_segment

FROM rfm_scores

ORDER BY monetary DESC;

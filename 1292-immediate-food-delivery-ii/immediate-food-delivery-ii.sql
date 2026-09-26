# Write your MySQL query statement below
SELECT ROUND((SUM(CASE WHEN d.order_date = d.customer_pref_delivery_date  
THEN 1 ELSE 0 END ) * 100 / COUNT(*)),2)
AS immediate_percentage
FROM Delivery d
JOIN (SELECT customer_id,
MIN(order_date) AS first_order_date
FROM Delivery 
GROUP BY customer_id) c
ON c.customer_id = d.customer_id
AND c.first_order_date = d.order_date

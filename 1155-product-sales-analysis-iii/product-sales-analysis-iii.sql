# Write your MySQL query statement below
SELECT p.product_id, f.first_year, p.quantity, p.price
FROM Sales p
JOIN
(SELECT product_id, MIN(year) AS first_year
FROM Sales
GROUP BY product_id) f
ON p.product_id = f.product_id
AND p.year = f.first_year
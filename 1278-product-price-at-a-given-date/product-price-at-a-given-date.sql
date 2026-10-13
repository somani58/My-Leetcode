# Write your MySQL query statement below
SELECT p.product_id,
COALESCE (
    (
        SELECT n.new_price
        FROM Products n
        WHERE p.product_id = n.product_id
        AND n.change_date <= "2019-08-16"
        ORDER BY n.change_date DESC
        LIMIT 1
    ),
    10) AS price
FROM 
(
    SELECT DISTINCT product_id
    FROM Products
) p

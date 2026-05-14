# Write your MySQL query statement below
SELECT i.id
FROM Weather i
JOIN Weather b
ON DATEDIFF(i.recordDate,b.recordDate) = 1
WHERE i.temperature > b.temperature
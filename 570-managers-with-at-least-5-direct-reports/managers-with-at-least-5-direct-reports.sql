# Write your MySQL query statement below
SELECT e.name
FROM Employee e
JOIN Employee em
ON e.id = em.managerId
GROUP BY e.id, e.name
HAVING COUNT(e.id) >= 5;




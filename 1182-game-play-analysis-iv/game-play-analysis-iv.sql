# Write your MySQL query statement below
SELECT ROUND(COUNT(DISTINCT ac.player_id)/(SELECT COUNT(DISTINCT player_id) FROM Activity),2) AS fraction
FROM Activity ac
JOIN
(SELECT player_id, MIN(event_date) AS first_login
FROM Activity 
GROUP BY player_id) a
ON a.player_id = ac.player_id
AND DATEDIFF(ac.event_date, a.first_login) = 1
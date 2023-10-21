# Question Link: https://leetcode.com/problems/top-travellers/

# Solution: 

SELECT users.name, SUM(IFNULL(rides.distance, 0)) AS 'travelled_distance'
FROM users
LEFT JOIN rides ON users.id = rides.user_id
GROUP BY rides.user_id, users.name
ORDER BY travelled_distance DESC, users.name ASC;

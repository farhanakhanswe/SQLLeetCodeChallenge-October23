# Question Link: https://leetcode.com/problems/top-travellers/

# Solution: 

SELECT 
  u.name,
  SUM(IFNULL(r.distance, 0)) AS 'travelled_distance'
FROM users AS u
LEFT JOIN rides AS r
ON u.id = r.user_id
GROUP BY r.user_id, u.name
ORDER BY travelled_distance DESC, u.name ASC;

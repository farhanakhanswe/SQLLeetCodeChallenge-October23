# Question Link: https://leetcode.com/problems/percentage-of-users-attended-a-contest/

# Solution:

SELECT 
 register.contest_id,
 ROUND(COUNT(register.user_id)/(SELECT COUNT('user_id') FROM users) * 100 ,2) AS "percentage"
FROM register
LEFT JOIN users ON register.user_id = users.user_id
GROUP BY register.contest_id  
ORDER BY percentage DESC, register.contest_id ASC;



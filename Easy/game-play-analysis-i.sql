# Question Link: https://leetcode.com/problems/game-play-analysis-i

# Solution:

SELECT 
 player_id, 
 MIN(event_date) AS first_login
FROM activity
GROUP BY player_id;
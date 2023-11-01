# Question Link: https://leetcode.com/problems/actors-and-directors-who-cooperated-at-least-three-times/

# Solution:

SELECT 
 actor_id,
 director_id
FROM actorDirector
GROUP BY actor_id, director_id
HAVING count(timestamp) >= 3;

# Question Link: https://leetcode.com/problems/rising-temperature/

# Solution:

SELECT w1.id 
FROM weather AS w1
JOIN weather AS w2 
ON datediff(w1.recordDate, w2.recordDate) = 1
AND w1.temperature > w2.temperature ;

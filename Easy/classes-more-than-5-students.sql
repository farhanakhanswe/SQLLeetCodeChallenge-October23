# Question Link: https://leetcode.com/problems/classes-more-than-5-students/

# Solution:

SELECT class 
FROM courses
GROUP BY class
HAVING COUNT(student) >= 5;

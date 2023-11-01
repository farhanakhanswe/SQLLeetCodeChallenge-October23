# Question Link: https://leetcode.com/problems/employee-bonus/

# Solution:

SELECT 
 e.name, 
 b.bonus
FROM employee AS e
LEFT JOIN bonus AS b
ON e.empID = b.empID
WHERE bonus < 1000 
OR bonus IS NULL;

# Question Link: https://leetcode.com/problems/employees-earning-more-than-their-managers/

# Solution:

SELECT e2.name AS Employee
FROM employee as e1
JOIN employee as e2 
ON e1.id = e2.managerId
WHERE e1.salary < e2.salary;

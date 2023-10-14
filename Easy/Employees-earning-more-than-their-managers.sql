# Question Link: https://leetcode.com/problems/employees-earning-more-than-their-managers/

# Solution:

SELECT E2.name AS 'Employee'
FROM Employee as E1
JOIN Employee as E2 ON E1.id = E2.managerId
WHERE e1.salary < e2.salary;

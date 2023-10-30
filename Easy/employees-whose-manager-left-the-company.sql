# Question Link: https://leetcode.com/problems/employees-whose-manager-left-the-company/

# Solution: 

SELECT employee_id
FROM employees
WHERE salary < 30000
AND manager_id IS NOT NULL
AND manager_id NOT IN
(
  SELECT employee_id 
  FROM employees
)
ORDER BY employee_id;

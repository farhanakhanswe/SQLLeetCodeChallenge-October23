# Question Link: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/

# Solution
  
SELECT 
    IFNULL(eU.unique_id, NULL) AS unique_id,
    e.name
FROM employees AS e
LEFT JOIN employeeUNI AS eU
ON e.id = eU.id;
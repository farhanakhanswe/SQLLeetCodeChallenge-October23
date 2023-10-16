# Question Link: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/

# Solution
  
SELECT IFNULL(`EU`.`unique_id`, NULL) AS `unique_id`, `E`.`name`
FROM `Employees` `E`
LEFT JOIN `EmployeeUNI` `EU`
ON `E`.`id` = `EU`.`id`;

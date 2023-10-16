# Question Link: https://leetcode.com/problems/employee-bonus/

# Solution:

SELECT `Employee`.`name`, `Bonus`.`bonus`
FROM `Employee`
LEFT JOIN `Bonus` ON `Employee`.`empID` = `Bonus`.`empID`
WHERE `bonus` < 1000 OR `Bonus` IS NULL;

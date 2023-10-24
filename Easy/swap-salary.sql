# Question Link: https://leetcode.com/problems/swap-salary/

# Solution:

UPDATE salary
SET sex = CASE
  WHEN sex  = "f" 
  THEN "m"
  ELSE "f"
END;

# Question Link: https://leetcode.com/problems/sales-person/

# Solution

SELECT s.name
FROM SalesPerson s
WHERE s.sales_id NOT IN (
  SELECT DISTINCT o.sales_id
  FROM Orders o
  JOIN Company c ON o.com_id = c.com_id
  WHERE c.name = "RED"
);

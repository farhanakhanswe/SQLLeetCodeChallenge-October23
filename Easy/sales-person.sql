# Question Link: https://leetcode.com/problems/sales-person/

# Solution

SELECT s.name
FROM salesPerson AS s
WHERE s.sales_id NOT IN (
  SELECT DISTINCT o.sales_id
  FROM orders AS o
  JOIN company AS c 
  ON o.com_id = c.com_id
  WHERE c.name = "RED"
);

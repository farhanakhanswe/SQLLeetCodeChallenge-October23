# Question Link: https://leetcode.com/problems/group-sold-products-by-the-date/

# Solution:
  
SELECT 
 sell_date,
 COUNT(DISTINCT product) AS num_sold, 
 GROUP_CONCAT(DISTINCT product ORDER BY product) AS products
FROM activities
GROUP BY sell_date
ORDER BY sell_date;

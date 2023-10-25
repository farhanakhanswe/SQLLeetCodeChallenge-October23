# Question Link: https://leetcode.com/problems/queries-quality-and-percentage/

# Solution:

SELECT 
query_name, 
ROUND(AVG(rating/position),2) AS quality, 
ROUND(SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END) / COUNT(query_name) * 100, 2) AS poor_query_percentage
FROM queries
GROUP BY query_name;

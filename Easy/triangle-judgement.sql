# Question Link: https://leetcode.com/problems/triangle-judgement/

# Solution:

SELECT x,y,z,
IF( x + y > z AND y + z > x AND z + x > y, 'Yes', 'No') AS 'triangle'
FROM Triangle;

# OR

SELECT x,y,z,
CASE
WHEN x + y > z AND x + z > y AND y + z > x 
THEN  'Yes'
ELSE 'No'
END AS 'triangle'
FROM triangle;

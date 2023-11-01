# Question Link: https://leetcode.com/problems/biggest-single-number

# Solution:

SELECT max(num) AS num
FROM(
SELECT num
FROM myNumbers
GROUP BY (num)
HAVING COUNT(num) = 1
) AS single_nums;
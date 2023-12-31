# Question Link: https://leetcode.com/problems/bank-account-summary-ii/

# Solution:

SELECT 
 u.name,
 SUM(t.amount) AS balance
FROM users AS u
JOIN transactions AS t
ON u.account = t.account
GROUP BY t.account
HAVING balance > 10000;

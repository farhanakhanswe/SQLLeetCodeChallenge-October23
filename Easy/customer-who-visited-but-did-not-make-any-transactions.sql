# Question Link: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/

# Solution:

SELECT 
 v.customer_id,
 COUNT(v.visit_id) AS count_no_trans
FROM visits AS v
LEFT JOIN transactions AS t
ON v.visit_id = t.visit_id
WHERE transaction_id IS NULL
GROUP BY v.customer_id;


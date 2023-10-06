# Question Link: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/

# Solution:

SELECT Visits.customer_id, COUNT(Visits.visit_id) AS count_no_trans
FROM Visits
LEFT JOIN Transactions
ON Visits.visit_id = Transactions.visit_id
WHERE transaction_id IS NULL
GROUP BY Visits.customer_id;


# Question Link: https://leetcode.com/problems/customers-who-never-order/

# Solution:

SELECT name AS Customers
FROM customers
LEFT JOIN orders
ON customers.id = orders.customerId
WHERE orders.customerId IS NULL;

# Question Link: https://leetcode.com/problems/average-selling-price/

# Solution:

SELECT
 p.product_id, 
 IFNULL(ROUND(SUM(p.price * u.units)/SUM(u.units),2),0) AS average_price
FROM prices as p
LEFT JOIN unitsSold as u
ON p.product_id = u.product_id 
AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY product_id;

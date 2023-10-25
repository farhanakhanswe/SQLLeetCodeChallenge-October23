# Question Link: https://leetcode.com/problems/average-selling-price/

# Solution:

SELECT p.product_id, IFNULL(ROUND(SUM(p.price * us.units)/SUM(us.units),2),0) AS "average_price" 
FROM prices as p
LEFT JOIN unitsSold as us
ON p.product_id = us.product_id 
AND us.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY product_id;

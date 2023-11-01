# Question Link: https://leetcode.com/problems/invalid-tweets/

# Solution:

SELECT tweet_id
FROM tweets
WHERE LENGTH(content) > 15; 

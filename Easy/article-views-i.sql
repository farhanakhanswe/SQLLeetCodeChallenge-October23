# Question Link: https://leetcode.com/problems/article-views-i/

# Solution:

SELECT DISTINCT author_id AS id
FROM views
WHERE author_id = viewer_id 
ORDER BY id;


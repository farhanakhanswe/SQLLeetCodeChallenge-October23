# Question Link: https://leetcode.com/problems/not-boring-movies/

# Solution:

SELECT * FROM `Cinema`
WHERE `description` != 'boring' AND `id` % 2 != 0
ORDER BY `rating` DESC;


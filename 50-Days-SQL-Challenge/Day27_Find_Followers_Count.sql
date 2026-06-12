-- Day 27
-- Problem: Find Followers Count
-- Platform: LeetCode

SELECT user_id,                            --Select each user’s ID
COUNT(follower_id) AS followers_count      --Count how many followers each user has and name it followers_count
FROM Followers                             --Use the Followers table
GROUP BY user_id                           --Group all rows by each user to count their followers separately
ORDER BY user_id;                          --Sort the result by user_id in ascending order

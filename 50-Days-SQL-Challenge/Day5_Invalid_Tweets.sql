-- Day 5
-- Problem: Invalid Tweets
-- Platform: LeetCode

SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;   --counts characters in the tweet

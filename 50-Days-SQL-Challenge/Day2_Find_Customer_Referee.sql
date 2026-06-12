-- Day 2
-- Problem: Find Customer Referee
-- Platform: LeetCode

SELECT name FROM Customer WHERE referee_id != 2 OR referee_id IS NULL;

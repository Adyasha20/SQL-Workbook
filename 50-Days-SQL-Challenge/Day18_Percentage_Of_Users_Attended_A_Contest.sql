-- Day 18
-- Problem: Percentage of Users Attended a Contest
-- Platform: LeetCode

SELECT r.contest_id,                                                              --Select each contest
ROUND(COUNT(r.user_id) * 100 / (SELECT COUNT(*) FROM Users), 2) AS percentage     --Calculate percentage of users and round to 2 decimals
FROM Register r                                                                   --Use the Register table
GROUP BY r.contest_id                                                             --Count users per contest
ORDER BY percentage DESC, r.contest_id ASC;                                       --Sort by percentage (high to low), then contest_id (low to high)

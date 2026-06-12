-- Day 14
-- Problem: Confirmation Rate
-- Platform: LeetCode

SELECT s.user_id,                                                                         --Select each user’s ID
ROUND(
    IFNULL(SUM(c.action = 'confirmed') / COUNT(c.action), 0),2) AS confirmation_rate      --Calculate confirmed/total ratio, replace NULL with 0, and round to 2 decimals
FROM Signups s                                                                            --Start with all users
LEFT JOIN Confirmations c                                                                 --Add confirmation records if they exist
ON s.user_id = c.user_id                                                                  --Match users with their confirmations
GROUP BY s.user_id;                                                                       --Compute the result for each user separately

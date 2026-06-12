-- Day 22
-- Problem: Game Play Analysis IV
-- Platform: LeetCode

SELECT 
ROUND(
    COUNT(DISTINCT a.player_id) / (SELECT COUNT(DISTINCT player_id) FROM Activity),2) AS fraction      --It calculates the fraction of players who logged in the next day after their first login, divided by total players, and rounds the result to 2 decimal places as fraction
FROM Activity a                                                                                        --Use Activity table as main table
JOIN(
    SELECT player_id, MIN(event_date) AS first_date                                                    --Find each player’s first login date
    FROM Activity                                                                                      --Use Activity table again in subquery       
    GROUP BY player_id                                                                                 --Group by player to get first date per player
) f                                                                                                    --It is giving a name (alias) to the subquery
ON a.player_id = f.player_id                                                                           --Match records for the same player
AND a.event_date = DATE_ADD(f.first_date, INTERVAL 1 DAY);                                             --Keep only records where login is exactly the next day

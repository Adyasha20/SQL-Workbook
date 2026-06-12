-- Day 24
-- Problem: User Activity for the Past 30 Days I
-- Platform: LeetCode

SELECT activity_date AS day,                                                              --Select the activity date and rename it as day                                  
COUNT(DISTINCT user_id) AS active_users                                                   --Count unique users active on each day and name it active_users
FROM Activity                                                                             --Use the Activity table
WHERE activity_date BETWEEN DATE_SUB('2019-07-27', INTERVAL 29 DAY) AND '2019-07-27'      --Filter records from the last 30 days (including 2019-07-27)
GROUP BY activity_date;                                                                   --Group data by each date to count users per day


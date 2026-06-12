-- Day 41
-- Problem: Friend Requests II: Who Has the Most Friends
-- Platform: LeetCode

SELECT id,                        --Select the person’s ID
COUNT(*) AS num                   --Count total number of friends for each person
FROM (                            --Use a subquery as a temporary table named t
    SELECT requester_id AS id     --Select requester IDs and rename column as id
    FROM RequestAccepted          --Use the RequestAccepted table
    UNION ALL                     --Combine requester IDs and accepter IDs together
    SELECT accepter_id AS id      --Select accepter IDs and rename column as id
    FROM RequestAccepted          --Use the RequestAccepted table
) t
GROUP BY id                       --Group all rows by each person
ORDER BY num DESC                 --Sort by highest friend count first
LIMIT 1;                          --Return only one row → the person with most friends

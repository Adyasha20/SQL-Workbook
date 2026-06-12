-- Day 19
-- Problem: Queries Quality and Percentage 
-- Platform: LeetCode

SELECT query_name,                                                         --Select each query group
ROUND(AVG(rating * 1.0 / position),2) AS quality,                          --Calculate average (rating/position) and round to 2 decimals
ROUND(SUM(rating < 3) * 100.0 / COUNT(*), 2) AS poor_query_percentage      --Calculate percentage of poor queries and round to 2 decimals
FROM Queries                                                               --Use the Queries table
GROUP BY query_name;                                                       --Compute results for each query group

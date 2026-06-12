-- Day 35
-- Problem: Last Person to Fit in the Bus
-- Platform: LeetCode

SELECT person_name                                        --Select the name of the final person
FROM(                                                     --Use a subquery as a temporary table named t
    SELECT person_name,                                   --Inside subquery, select each person
    SUM(weight) OVER (ORDER BY turn) AS total_weight      --Calculate the running total weight in order of boarding
    FROM Queue                                            --Use the Queue table
) t  
WHERE total_weight <= 1000                                --Keep only those people whose total weight does not exceed 1000
ORDER BY total_weight DESC                                --Sort to get the maximum valid total weight first                    
LIMIT 1;                                                  --Return only one row → the last person who fits
  

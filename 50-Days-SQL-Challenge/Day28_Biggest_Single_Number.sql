-- Day 28
-- Problem: Biggest Single Number
-- Platform: LeetCode

SELECT MAX(num) AS num          --Select the largest number from the result and name it num
FROM (                          --Use the result of a subquery as a temporary table named t
    SELECT num                  --Select each number from the table
    FROM MyNumbers              --Use the MyNumbers table
    GROUP BY num                --Group rows by each number
    HAVING COUNT(num) = 1       --Keep only numbers that appear exactly once
) t;

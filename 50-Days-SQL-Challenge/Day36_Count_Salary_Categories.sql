-- Day 36
-- Problem: Count Salary Categories
-- Platform: LeetCode

SELECT 'Low Salary' AS category,         --Create a row labeled Low Salary
COUNT(*) AS accounts_count               --Count how many accounts fall in this category
FROM Accounts                            --Use the Accounts table
WHERE income < 20000                     --Filter accounts with low salary
UNION                                    --Combine this result with the next query result
SELECT 'Average Salary',                 --Create a row labeled Average Salary
COUNT(*)                                 --Count accounts in this category
FROM Accounts                            --Use the Accounts table
WHERE income BETWEEN 20000 AND 50000     --Filter accounts with average salary range
UNION                                    --Combine with the next result
SELECT 'High Salary',                    --Create a row labeled High Salary
COUNT(*)                                 --Count accounts in this category
FROM Accounts                            --Use the Accounts table
WHERE income > 50000;                    --Filter accounts with high salary

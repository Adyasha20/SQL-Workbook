-- Day 15
-- Problem: Not Boring Movies
-- Platform: LeetCode

SELECT *                        --Select all columns
FROM Cinema                     --Use the Cinema table
WHERE id % 2 = 1                --Keep only movies with odd IDs
AND description != 'boring'     --Exclude movies with description "boring"
ORDER BY rating DESC;           --Sort results by rating in descending order

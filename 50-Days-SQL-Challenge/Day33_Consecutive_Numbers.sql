-- Day 33
-- Problem: Consecutive Numbers
-- Platform: LeetCode

SELECT DISTINCT l1.num AS ConsecutiveNums      --Select the number that appears consecutively and remove duplicate results
FROM Logs l1                                   --Use Logs table as l1 (current row)
JOIN Logs l2 ON l1.id = l2.id - 1              --Join with the next row (id + 1)
JOIN Logs l3 ON l1.id = l3.id - 2              --Join with the next-to-next row (id + 2)
WHERE l1.num = l2.num AND l2.num = l3.num;     --Check if all three consecutive rows have the same number

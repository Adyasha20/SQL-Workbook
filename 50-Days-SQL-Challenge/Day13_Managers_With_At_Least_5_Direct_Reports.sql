-- Day 13
-- Problem: Managers with at Least 5 Direct Reports
-- Platform: LeetCode

SELECT name                   --Select the names of employees (managers)
FROM Employee                 --Use the Employee table
WHERE id IN(                  --Filter employees whose id matches the result of the subquery
    SELECT managerId          --Get all manager IDs
    FROM Employee             --From the same Employee table
    GROUP BY managerId        --Group employees by their manager
    HAVING COUNT(*) >= 5      --Keep only managers with at least 5 employees
);

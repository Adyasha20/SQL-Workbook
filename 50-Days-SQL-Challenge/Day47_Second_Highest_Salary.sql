-- Day 47
-- Problem: Second Highest Salary
-- Platform: LeetCode

SELECT (                          --Return the result of the subquery and rename the column as SecondHighestSalary
    SELECT DISTINCT salary        --Select only unique salary values
    FROM Employee                 --Use the Employee table
    ORDER BY salary DESC          --Sort salaries from highest to lowest
    LIMIT 1 OFFSET 1              --Skip the first highest salary and return the next salary
) AS SecondHighestSalary;

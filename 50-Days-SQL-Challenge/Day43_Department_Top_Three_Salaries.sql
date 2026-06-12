-- Day 43
-- Problem: Department Top Three Salaries
-- Platform: LeetCode


SELECT d.name AS Department,          --Select the department name and rename it as Department
e.name AS Employee,                   --Select the employee name and rename it as Employee
e.salary AS Salary                    --Select the employee salary and rename it as Salary
FROM (                                --Use a subquery as a temporary table named e
    SELECT *,                         --Select all columns from the Employee table
    DENSE_RANK() OVER (               --Assign a rank to each salary
        PARTITION BY departmentId     --Create separate salary rankings for each department
        ORDER BY salary DESC          --Rank salaries from highest to lowest
    ) AS rnk
    FROM Employee                     --Use the Employee table
) e
JOIN Department d                     --Join with the Department table
ON e.departmentId = d.id              --Match employees with their departments
WHERE e.rnk <= 3;                     --Keep only employees whose salary rank is in the top 3

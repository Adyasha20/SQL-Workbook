-- Day 37
-- Problem: Employees Whose Manager Left the Company
-- Platform: LeetCode

SELECT e.employee_id                      --Select the employee IDs to return
FROM Employees e                          --Use the Employees table and give it alias e
WHERE e.salary < 30000                    --Keep employees whose salary is less than 30000
AND e.manager_id IS NOT NULL              --Ensure the employee has a manager
AND e.manager_id NOT IN(                  --Keep only those employees whose manager ID does not exist in the table (manager left)
    SELECT employee_id FROM Employees
)
ORDER BY e.employee_id;                   --Sort the result by employee_id

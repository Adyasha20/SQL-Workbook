-- Day 31
-- Problem: Primary Department for Each Employee
-- Platform: LeetCode

SELECT employee_id, department_id        --Select employee ID and their department
FROM Employee                            --Use the Employee table
WHERE primary_flag = 'Y'                 --Get rows where the department is marked as primary
UNION                                    --Combine results from two queries and remove duplicates
SELECT employee_id, department_id        --Again select employee and department
FROM Employee                            --Use the Employee table again
GROUP BY employee_id                     --Group all records by each employee
HAVING COUNT(*) = 1;                     --Keep only employees who belong to exactly one department

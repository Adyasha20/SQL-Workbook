-- Day 17
-- Problem: Project Employees 1
-- Platform: LeetCode

SELECT p.project_id,                                  --Select each project
ROUND(AVG(e.experience_years),2) AS average_years     --Calculate average experience and round to 2 decimals
FROM Project p                                        --Start from the Project table
JOIN Employee e                                       --Join with Employee table
ON p.employee_id = e.employee_id                      --Match employees to projects
GROUP BY p.project_id;                                --Compute result for each project

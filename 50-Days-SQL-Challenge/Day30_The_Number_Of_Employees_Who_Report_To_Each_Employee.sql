-- Day 30
-- Problem: The Number of Employees Which Report to Each Employee
-- Platform: LeetCode

SELECT e.employee_id, e.name,              --Select the manager’s ID and name
COUNT(r.employee_id) AS reports_count,     --Count how many employees report to that manager
ROUND(AVG(r.age)) AS average_age           --Calculate the average age of those employees and round it
FROM Employees e                           --Use the Employees table as managers (e)
JOIN Employees r                           --Join the same table again as reporting employees (r)
ON e.employee_id = r.reports_to            --Match each manager with employees who report to them
GROUP BY employee_id, e.name               --SQL Query Correction
ORDER BY e.employee_id;                    --Sort the result by employee_id

-- Day 6
-- Problem: Replace Employee ID With The Unique Identifier
-- Platform: LeetCode

SELECT EmployeeUNI.unique_id, Employees.name 
FROM Employees
LEFT JOIN EmployeeUNI                           --join the second table but keep all employees
ON Employees.id = EmployeeUNI.id;               --match rows using id

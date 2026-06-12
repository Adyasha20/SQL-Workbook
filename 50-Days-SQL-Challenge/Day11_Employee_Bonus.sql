-- Day 11
-- Problem: Employee Bonus
-- Platform: LeetCode

SELECT name, bonus                         --Selects the employee name and their bonus from the tables
FROM Employee                              --Takes Employee table as the main table and gives it alias e
LEFT JOIN BONUS                            --Joins Bonus table while keeping all employees even if they have no bonus
ON Employee.empId = Bonus.empId            --Matches employees with their bonus using empId
WHERE bonus < 1000 OR bonus IS NULL;       --Filters employees who have bonus less than 1000 or no bonus

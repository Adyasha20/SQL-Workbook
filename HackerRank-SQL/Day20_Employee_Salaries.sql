-- Day 20
-- Problem: Employee Salaries
-- Platform: HackerRank

SELECT name                               --Select only the employee names
FROM Employee                             --Use the Employee table
WHERE SALARY > 2000 AND months < 10       --Keep only employees whose salary is greater than 2000 and Employee must have worked for less than 10 months
ORDER BY employee_id;                     --Sort the result by employee ID in ascending order (smallest to largest)

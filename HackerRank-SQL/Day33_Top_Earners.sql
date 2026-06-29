-- Day 33
-- Problem: Top Earners
-- Platform: HackerRank

SELECT max(months * salary), COUNT(*)      --Return the maximum total earnings (months × salary) and the number of employees who have those maximum earnings
FROM Employee                              --Retrieve the data from the Employee table
WHERE months * salary = (                  --Keep only those employees whose total earnings are equal to the maximum total earnings
    SELECT max(months * salary)            --Find the highest total earnings among all employees
    FROM Employee                          --Calculate the maximum earnings using the Employee table
);

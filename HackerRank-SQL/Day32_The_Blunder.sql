-- Day 32
-- Problem: The Blunder
-- Platform: HackerRank

SELECT CEIL (                          --Select the final answer and round it up to the nearest integer using the CEIL() function
    AVG(Salary) -                      --Calculate the actual average salary of all employees
    avg(REPLACE(Salary, '0', ''))      --Remove every 0 from each salary (using REPLACE()), then calculate the average of these modified salaries
    )
FROM EMPLOYEES;                        --Perform all calculations using the data from the EMPLOYEES table

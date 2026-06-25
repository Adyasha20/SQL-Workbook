-- Day 26
-- Problem: Revising Aggregations - The Count Function
-- Platform: HackerRank
  
SELECT COUNT(*)                  --Select and count the total number of rows that satisfy the given condition
FROM CITY                        --Retrieve the data from the CITY table
WHERE POPULATION > 100000;       --Consider only those cities whose population is greater than 100,000

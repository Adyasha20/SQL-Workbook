-- Day 31
-- Problem: Population Density Difference
-- Platform: HackerRank

SELECT MAX(POPULATION) - MIN(POPULATION)      --Calculate the difference between the largest population and the smallest population in the CITY table
FROM CITY;                                    --Performs the calculation using the data from the CITY table

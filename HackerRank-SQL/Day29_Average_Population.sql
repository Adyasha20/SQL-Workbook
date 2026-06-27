-- Day 29
-- Problem: Average Population
-- Platform: HackerRank

SELECT FLOOR(AVG(POPULATION))      --Calculate the average of the POPULATION column and round the result down to the nearest integer using the FLOOR() function
FROM CITY;                         --Retrieve the data from the CITY table

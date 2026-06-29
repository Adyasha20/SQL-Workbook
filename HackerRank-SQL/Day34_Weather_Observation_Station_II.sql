-- Day 34
-- Problem: Weather Observation Station II
-- Platform: HackerRank

SELECT ROUND(SUM(LAT_N),2), ROUND(SUM(LONG_W),2)       --Calculate the total of all LAT_N values and the total of all LONG_W values, then round both totals to 2 decimal places
FROM STATION;                                          --Perform the calculations using the data from the STATION table

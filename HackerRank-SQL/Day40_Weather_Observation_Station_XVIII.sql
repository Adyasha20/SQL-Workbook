-- Day 40
-- Problem: Weather Observation Station XVIII
-- Platform: HackerRank

SELECT ROUND (                              --Selects the final Manhattan distance and rounds it to 4 decimal places
    ABS(MAX(LAT_N) - MIN(LAT_N)) +          --Calculates the absolute difference between the maximum and minimum latitude
    ABS(MAX(LONG_W) - MIN(LONG_W)),         --Calculates the absolute difference between the maximum and minimum longitude
    4                                       --Rounds the final answer to 4 decimal places after adding the latitude difference and longitude difference
)
FROM STATION;                               --Retrieves the latitude and longitude values from the STATION table

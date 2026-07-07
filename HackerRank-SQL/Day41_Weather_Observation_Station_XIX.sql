-- Day 41
-- Problem: Weather Observation Station XIX
-- Platform: HackerRank

SELECT ROUND (                                    --Selects the Euclidean distance and rounds it to 4 decimal places
    SQRT (                                        --Calculates the square root of the expression inside it
        POW(MAX(LAT_N) - MIN(LAT_N), 2) +         --Calculates the square of the difference between the maximum and minimum latitude
        POW(MAX(LONG_W) - MIN(LONG_W), 2)         --Calculates the square of the difference between the maximum and minimum longitude
    ),  
    4                                             --Add the squared latitude difference and squared longitude difference and ounds the final answer to 4 decimal places
)
FROM STATION;                                     --Retrieves the latitude and longitude values from the STATION table

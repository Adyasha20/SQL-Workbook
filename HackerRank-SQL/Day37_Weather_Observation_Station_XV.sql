-- Day 37
-- Problem: Weather Observation Station XV
-- Platform: HackerRank

SELECT ROUND (LONG_W, 4)            --Selects the LONG_W value and rounds it to 4 decimal places
FROM STATION                        --Retrieves data from the STATION table
WHERE LAT_N = (                     --Selects the row whose LAT_N matches the result returned by the subquery
    SELECT MAX(LAT_N)               --Finds the greatest (maximum) latitude
    FROM STATION                    --Looks for the maximum latitude in the STATION table
    WHERE LAT_N < 137.2345          --Considers only latitude values that are less than 137.2345
);

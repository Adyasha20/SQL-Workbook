-- Day 39
-- Problem: Weather Observation Station XVII
-- Platform: HackerRank

SELECT ROUND(LONG_W, 4)          --Selects the LONG_W value and rounds it to 4 decimal places
FROM STATION                     --Retrieves data from the STATION table
WHERE LAT_N = (                  --Finds the row whose LAT_N matches the result returned by the subquery
    SELECT MIN(LAT_N)            --Finds the smallest latitude
    FROM STATION                 --Searches the STATION table
    WHERE LAT_N > 38.7780        --Considers only latitude values greater than 38.7780
);

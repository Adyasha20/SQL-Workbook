-- Day 42
-- Problem: Weather Observation Station XX
-- Platform: HackerRank

SELECT ROUND(AVG(LAT_N), 4)                                    --Calculates the average of the middle latitude value(s) and rounds the result to 4 decimal places
FROM (                                                         --Starts a subquery that prepares the data needed to find the median
    SELECT LAT_N,                                              --Selects the latitude values from the STATION table
        ROW_NUMBER() OVER (ORDER BY LAT_N) AS row_num,         --Assigns a row number to each latitude after sorting them in ascending order
        COUNT(*) OVER () AS total_rows                         --Counts the total number of rows and stores the same count for every row
    FROM STATION                                               --Reads all records from the STATION table
) AS T                                                         --Ends the subquery and names the resulting table T
WHERE row_num IN (                                             --Filters the rows to keep only the middle row(s)
    FLOOR((total_rows + 1) / 2),                               --Finds the first middle position
    FLOOR((total_rows + 2) / 2)                                --Finds the second middle position
);
    

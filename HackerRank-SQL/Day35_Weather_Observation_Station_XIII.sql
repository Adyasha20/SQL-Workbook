-- Day 35
-- Problem: Weather Observation Station XIII
-- Platform: HackerRank

SELECT TRUNCATE(SUM(LAT_N), 4)      --Calculates the total of all selected LAT_N values and truncates the result to 4 decimal places
FROM STATION                        --Retrieves the data from the STATION table
WHERE LAT_N > 38.7880               --Selects only those rows where LAT_N is greater than 38.7880
AND LAT_N < 137.2345;               --Further filters the rows to include only those where LAT_N is less than 137.2345

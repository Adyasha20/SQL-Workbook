-- Day 36
-- Problem: Weather Observation Station XIV
-- Platform: HackerRank

SELECT TRUNCATE(MAX(LAT_N), 4)        --Finds the maximum (greatest) LAT_N value and truncates it to 4 decimal places
FROM STATION                          --Retrieves the data from the STATION table
WHERE LAT_N < 137.2345;               --Considers only those rows where LAT_N is less than 137.2345

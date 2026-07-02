-- Day 38
-- Problem: Weather Observation Station XVI
-- Platform: HackerRank

SELECT ROUND(MIN(LAT_N), 4)        --Finds the smallest LAT_N value and rounds it to 4 decimal places
FROM STATION                       --Retrieves data from the STATION table
WHERE LAT_N > 38.7780;             --Considers only those rows where LAT_N is greater than 38.7780

-- Day 16
-- Problem: Weather Observation Station XI
-- Platform: HackerRank

SELECT DISTINCT CITY                                       --Select the CITY column and remove duplicate city names
FROM STATION                                               --Use the STATION table
WHERE CITY NOT REGEXP '^[AEIOUaeiou].*[AEIOUaeiou]$';      --Keep only those cities that do not match the given pattern

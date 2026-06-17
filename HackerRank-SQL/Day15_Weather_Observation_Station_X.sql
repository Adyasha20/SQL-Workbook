-- Day 15
-- Problem: Weather Observation Station X
-- Platform: HackerRank

SELECT DISTINCT CITY                        --Select the CITY column and remove duplicate city names
FROM STATION                                --Retrieve data from the STATION table
WHERE CITY NOT REGEXP '[AEIOUaeiou]$';      --Keep only those cities whose names do not match the given pattern

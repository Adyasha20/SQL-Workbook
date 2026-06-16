-- Day 14
-- Problem: Weather Observation Station IX
-- Platform: HackerRank

SELECT DISTINCT CITY                        --Select unique city names
FROM STATION                                --Use the STATION table
WHERE CITY NOT REGEXP '^[AEIOUaeiou]';      --Keep only cities that do not match the pattern ^[AEIOUaeiou]

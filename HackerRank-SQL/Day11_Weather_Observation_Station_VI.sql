-- Day 11
-- Problem: Weather Observation Station VI
-- Platform: HackerRank

SELECT DISTINCT CITY                     --Select city names and remove duplicate cities
FROM STATION                             --Use the STATION table
WHERE CITY REGEXP '^[AEIOUaeiou]';       --Keep only cities whose first letter is a vowel. ^ -> Means start of the string. First character must be one of: [AEIOUaeiou]

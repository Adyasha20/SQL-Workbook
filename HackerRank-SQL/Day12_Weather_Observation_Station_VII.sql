-- Day 12
-- Problem: Weather Observation Station VII
-- Platform: HackerRank

SELECT DISTINCT CITY                    --Select city names and remove duplicate cities
FROM STATION                            --Use the STATION table
WHERE CITY REGEXP '[AEIOUaeiou]$';      --Keep only cities whose last letter is a vowel. [AEIOUaeiou] -> Match any vowel. $ -> Means end of the string

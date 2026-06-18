-- Day 17
-- Problem: Weather Observation Station XII
-- Platform: HackerRank

SELECT DISTINCT CITY                                                           --Select the CITY column and remove duplicate city names
FROM STATION                                                                   --Use the STATION table
WHERE CITY NOT REGEXP '^[AEIOUaeiou]' AND CITY NOT REGEXP '[AEIOUaeiou]$';     --Select cities whose first character is not a vowel and Select cities whose last character is not a vowel. AND -> Both conditions must be true

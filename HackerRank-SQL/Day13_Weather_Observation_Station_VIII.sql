-- Day 13
-- Problem: Weather Observation Station VIII
-- Platform: HackerRank

SELECT DISTINCT CITY                                    --Select unique city names
FROM STATION                                            --Use the STATION table
WHERE CITY REGEXP '^[AEIOUaeiou].*[AEIOUaeiou]$';       --Filter cities using a regular expression. ^[AEIOUaeiou] -> First character of the city name must be a vowel. .* -> Zero or more characters can appear in the middle. [AEIOUaeiou]$' -> End of the city name must be a vowel

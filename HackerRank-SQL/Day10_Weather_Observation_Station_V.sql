-- Day 10
-- Problem: Weather Observation Station V
-- Platform: HackerRank

SELECT CITY, LENGTH(CITY)             --Select the city name and the number of characters in that city name
FROM STATION                          --Use the STATION table
ORDER BY LENGTH(CITY), CITY           --First sort cities by length in ascending order (shortest first), then if multiple cities have the same length, sort them alphabetically
LIMIT 1;                              --Return only the first row after sorting

SELECT CITY, LENGTH(CITY)             --Select the city name and the number of characters in that city name
FROM STATION                          --Use the STATION table
ORDER BY LENGTH(CITY) DESC, CITY      --First sort cities by length in descending order (longest first), then if multiple cities have the same length, sort them alphabetically
LIMIT 1;                              --Return only the first row after sorting

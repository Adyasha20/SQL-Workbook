-- Day 43
-- Problem: Population Census
-- Platform: HackerRank

SELECT SUM(C.POPULATION)             --Calculates the total population of all matching cities
FROM CITY C                          --Reads data from the CITY table and gives it the alias C
JOIN COUNTRY CN                      --Joins the COUNTRY table and gives it the alias CN
ON C.COUNTRYCODE = CN.CODE           --Matches each city with its corresponding country using the country code
WHERE CN.CONTINENT = 'Asia';         --Keeps only those cities whose country belongs to the continent Asia

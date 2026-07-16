-- Day 45
-- Problem: Average Population of Each Continent
-- Platform: HackerRank

SELECT CN.CONTINENT, FLOOR(AVG(C.POPULATION))        --Displays each continent and the average population of its cities rounded down to the nearest integer
FROM CITY C                                          --Reads data from the CITY table and gives it the alias C
JOIN COUNTRY CN                                      --Joins the COUNTRY table and gives it the alias CN
ON C.COUNTRYCODE = CN.CODE                           --Matches each city with its corresponding country using the country code
GROUP BY CN.CONTINENT;                               --Groups all cities belonging to the same continent together before calculating the average

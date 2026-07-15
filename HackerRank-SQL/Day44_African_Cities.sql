-- Day 44
-- Problem: African Cities
-- Platform: HackerRank
    
SELECT C.NAME                          --Selects the name of each city from the CITY table
FROM CITY C                            --Reads data from the CITY table and gives it the alias C
JOIN COUNTRY CN                        --Joins the COUNTRY table and gives it the alias CN
ON C.COUNTRYCODE = CN.CODE             --Matches each city with its corresponding country using the country code
WHERE CN.CONTINENT = 'Africa';         --Keeps only those cities whose country belongs to the Africa continent

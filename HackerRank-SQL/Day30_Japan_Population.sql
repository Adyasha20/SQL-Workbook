-- Day 30
-- Problem: Japan Population
-- Platform: HackerRank

SELECT SUM(POPULATION)           --Calculate the total (sum) of all values in the POPULATION column
FROM CITY                        --Retrieve the data from the CITY table
WHERE COUNTRYCODE = 'JPN';       --Consider only those rows where the COUNTRYCODE is 'JPN' (Japan)

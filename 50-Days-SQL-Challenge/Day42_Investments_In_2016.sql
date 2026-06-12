-- Day 42
-- Problem: Investments in 2016
-- Platform: LeetCode

SELECT ROUND(SUM(tiv_2016), 2) AS tiv_2016      --Add all selected tiv_2016 values and round the result to 2 decimal places
FROM Insurance                                  --Use the Insurance table
WHERE tiv_2015 IN (                             --Keep only rows whose tiv_2015 value appears more than once
    SELECT tiv_2015                             --Select all tiv_2015 values
    FROM Insurance                              --Use Insurance table again
    GROUP BY tiv_2015                           --Group rows by tiv_2015
    HAVING COUNT(*) > 1                         --Keep only investment values that appear multiple times
)
AND (lat, lon) IN (                             --Keep only rows whose location (lat, lon) is unique
    SELECT lat, lon                             --Select latitude and longitude pairs
    FROM Insurance                              --Use Insurance table again
    GROUP BY lat, lon                           --Group rows by location
    HAVING COUNT(*) = 1                         --Keep only locations appearing exactly once
);

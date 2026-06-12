-- Day 48
-- Problem: Group Sold Products By The Date
-- Platform: LeetCode

SELECT sell_date,                                                                --Select the selling date column
COUNT(DISTINCT product) AS num_sold,                                             --Count the number of unique products sold on each date
GROUP_CONCAT(DISTINCT product ORDER BY product SEPARATOR ',') AS products        --Combine multiple product names into one string and rename it as products. Remove duplicate product names. Sort product names alphabetically. Separate product names using commas
FROM Activities                                                                  --Use the Activities table
GROUP BY sell_date                                                               --Group all rows by each selling date
ORDER BY sell_date                                                               --Sort the final output by date

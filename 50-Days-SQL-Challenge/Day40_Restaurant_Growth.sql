-- Day 40
-- Problem: Restaurant Growth
-- Platform: LeetCode

WITH daily_amount AS (                                 --Create a temporary table named daily_amount
    SELECT visited_on,                                 --Select each visit date
    SUM(amount) AS amount                              --Calculate total sales amount for each day
    FROM Customer                                      --Use the Customer table
    GROUP BY visited_on                                --Group all rows by date
)
SELECT visited_on,                                     --Show each date in the final result
SUM(amount) OVER (                                     --Calculate the 7-day running total amount
    ORDER BY visited_on                                --Process rows in date order
    ROWS BETWEEN 6 PRECEDING AND CURRENT ROW           --Include: current row, previous 6 rows. Making a 7-day window
) AS amount,
ROUND(                                                 --Calculate the 7-day moving average and round it to 2 decimals
    AVG(amount) OVER (
        ORDER BY visited_on
        ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
    ),2
) AS average_amount
FROM daily_amount                                     --Use the temporary table containing daily totals
LIMIT 1000000 OFFSET 6;                               --Skip the first 6 rows because they do not have complete 7-day data

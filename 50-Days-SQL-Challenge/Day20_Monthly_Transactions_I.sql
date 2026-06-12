-- Day 20
-- Problem: Monthly Transactions 1
-- Platform: LeetCode

SELECT 
    DATE_FORMAT(trans_date, '%Y-%m') AS month,                            --Converts full date into year-month format (YYYY-MM) for grouping
    country,                                                              --Selects the country column
    COUNT(*) AS trans_count,                                              --Counts total number of transactions per group
    COUNT(CASE WHEN state = 'approved' THEN 1 END) AS approved_count,     --Counts only approved transactions (others become NULL and are ignored)
    SUM(amount) AS trans_total_amount,                                    --Calculates total transaction amount (approved + declined)
    SUM(CASE                                                              --Adds amounts only for approved transactions, others contribute 0
        WHEN state = 'approved' THEN amount                                
        ELSE 0
    END) AS approved_total_amount
FROM Transactions                                                         --Takes data from the Transactions table
GROUP BY month, country;                                                  --Groups data by each month and each country

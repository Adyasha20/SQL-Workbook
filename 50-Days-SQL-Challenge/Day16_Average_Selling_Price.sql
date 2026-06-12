-- Day 16
-- Problem: Average Selling Price
-- Platform: LeetCode

SELECT p.product_id,                                                        --Select each product
ROUND( 
    IFNULL(SUM(u.units * p.price)/SUM(u.units), 0),2) AS average_price      --Compute weighted average price and round to 2 decimals (0 if no sales)
FROM Prices p                                                               --Start with price periods
LEFT JOIN UnitsSold u                                                       --Attach sales data if available
ON p.product_id = u.product_id                                              --Match same product
AND u.purchase_date BETWEEN p.start_date AND p.end_date                     --Match sales within the correct price period
GROUP BY p.product_id;                                                      --Calculate result for each product

-- Day 34
-- Problem: Product Price at a Given Date
-- Platform: LeetCode

SELECT p.product_id,                                    --Select each product’s ID
IFNULL(                                                 --If no price is found, return 10 (default price)
    (SELECT new_price                                   --Start a subquery to find the price for that product
    FROM Products p2
    WHERE p2.product_id = p.product_id                  --Match the same product in the subquery
    AND p2.change_date <= '2019-08-16'                  --Consider only price changes on or before the given date
    ORDER BY p2.change_date DESC                        --Sort by date so the latest change comes first
    LIMIT 1),                                           --Take only the most recent price
10) AS price                               
FROM (SELECT DISTINCT product_id FROM Products) p;      --Get all unique product IDs

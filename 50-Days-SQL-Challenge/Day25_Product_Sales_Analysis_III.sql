-- Day 25
-- Problem: Product Sales Analysis III
-- Platform: LeetCode

SELECT s.product_id,                                  --Select product ID, rename year as first_year, and include quantity and price
s.year AS first_year,
s.quantity,
s.price
FROM Sales s                                          --Use the Sales table and give it alias s
JOIN (
    SELECT product_id , MIN(year) AS first_year       --In subquery, find the earliest year for each product
    FROM Sales                                        --Use Sales table again inside subquery
    GROUP BY product_id                               --Group data to get one first year per product
) f                                                   --Join with a subquery (temporary table) named f
ON s.product_id = f.product_id                        --Match rows for the same product
AND s.year = f.first_year;                            --Keep only rows where year equals the first year

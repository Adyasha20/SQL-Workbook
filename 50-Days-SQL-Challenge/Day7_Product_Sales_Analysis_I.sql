-- Day 7
-- Problem: Product Sales Analysis I
-- Platform: LeetCode

SELECT product_name, year, price 
FROM Sales
JOIN Product                                  --combine with Product table
ON Sales.product_id = Product.product_id;     --match rows using product_id

-- Day 49
-- Problem: List the Products Ordered in a Period
-- Platform: LeetCode

SELECT p.product_name,                                        --Select the product name column
SUM(o.unit) AS unit                                           --Add all ordered units for each product and rename it as unit
FROM Products p                                               --Use the Products table and give it alias p
JOIN Orders o                                                 --Join the Orders table and give it alias o
ON p.product_id = o.product_id                                --Match products with their corresponding orders using product_id
WHERE o.order_date BETWEEN '2020-02-01' AND '2020-02-29'      --Keep only orders placed in February 2020
GROUP BY p.product_id, p.product_name                         --Group all rows by each product
HAVING SUM(o.unit) >= 100;                                    --Keep only products whose total ordered units are 100 or more

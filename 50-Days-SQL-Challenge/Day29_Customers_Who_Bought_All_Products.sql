-- Day 29
-- Problem: Customers Who Bought All Products
-- Platform: LeetCode

SELECT customer_id                                                        --Select each customer’s ID
FROM Customer                                                             --Use the Customer table
GROUP BY customer_id                                                      --Group all rows by each customer
HAVING COUNT(DISTINCT product_key) = (SELECT COUNT(*) FROM Product);      --It filters and keeps only those customers who bought exactly the same number of unique products as the total products available, 
                                                                          --                              meaning they bought all products

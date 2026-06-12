-- Day 21
-- Problem: Immediate Food Delivery II
-- Platform: LeetCode

SELECT 
ROUND(
    SUM(order_date = customer_pref_delivery_date) * 100.0 / count(*),2) AS immediate_percentage      --Calculate percentage of immediate first orders and round to 2 decimal places
FROM Delivery                                                                                        --Use the Delivery table
WHERE (customer_id, order_date) IN (                                                                 --Filter only first orders of each customer
    SELECT customer_id, MIN(order_date)                                                              --Find the earliest order date for each customer
    FROM Delivery                                                                                    --Again use the Delivery table for subquery
    GROUP BY customer_id                                                                             --Group data to get first order per customer
);

-- Day 8
-- Problem: Customer Who Visited but Did Not Make Any Transactions
-- Platform: LeetCode

SELECT Visits.customer_id, COUNT(*) AS count_no_trans       --count number of such visits
FROM Visits
LEFT JOIN Transactions
ON Visits.visit_id = Transactions.visit_id
WHERE Transactions.visit_id IS NULL                         --filter visits with no transactions
GROUP BY Visits.customer_id;                                --group by each customer

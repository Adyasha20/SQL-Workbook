-- Day 9
-- Problem: Rising Temperature
-- Platform: LeetCode

SELECT w1.id                                    
FROM Weather w1                                 --Take the table as w1 (today)
JOIN Weather w2                                 --Take the same table again as w2 (yesterday).This is called self join
ON DATEDIFF(w1.recordDate,w2.recordDate)=1      --Compare dates(i.e w1-->today,w2-->yesterday)   [w1.recordDate - w2.recordDate = 1 day]
WHERE w1.temperature > w2.temperature;          --Keep only rows where: today temp > yesterday temp

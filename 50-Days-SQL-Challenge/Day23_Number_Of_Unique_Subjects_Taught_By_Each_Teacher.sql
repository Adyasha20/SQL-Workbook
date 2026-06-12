-- Day 23
-- Problem: Number of Unique Subjects Taught by Each Teacher
-- Platform: LeetCode

SELECT teacher_id,                     --Select each teacher’s ID
COUNT(DISTINCT subject_id) AS cnt      --Count the number of unique subjects taught by each teacher and name it cnt
FROM Teacher                           --Use the Teacher table
GROUP BY teacher_id;                   --Group all rows by each teacher to calculate their subject count separately

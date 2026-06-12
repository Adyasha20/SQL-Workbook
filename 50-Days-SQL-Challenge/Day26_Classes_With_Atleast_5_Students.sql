-- Day 26
-- Problem: Classes With at Least 5 Students
-- Platform: LeetCode

SELECT class                    --Select the class names to display in the output
FROM Courses                    --Use the Courses table
GROUP BY class                  --Group all rows based on each class
HAVING COUNT(student) >=5;      --Keep only those groups (classes) that have 5 or more students

-- Day 18
-- Problem: Higher Than 75 Marks
-- Platform: HackerRank

SELECT Name                         --Select only the Name column
FROM STUDENTS                       --Use the STUDENTS table
WHERE MARKS > 75                    --Keep only students who scored more than 75 marks
ORDER BY RIGHT(Name, 3), ID;        --Sort the students by the last 3 characters of their names. RIGHT(Name, 3) -> extracts the last 3 letters

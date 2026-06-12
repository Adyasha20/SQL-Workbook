-- Day 12
-- Problem: Students and Examinations
-- Platform: LeetCode

SELECT s.student_id, s.student_name, sub.subject_name,      --Select student details, subject, and count of exams attended
COUNT(e.subject_name) AS attended_exams
FROM Students s                                             --Start with the Students table
CROSS JOIN Subjects sub                                     --Create all possible combinations of students and subjects
LEFT JOIN Examinations e                                    --Add exam records if they exist
ON s.student_id = e.student_id                              --Match records with the same student
AND sub.subject_name = e.subject_name                       --Match records with the same subject
GROUP BY s.student_id, s.student_name, sub.subject_name     --Group data by each student and subject
ORDER BY s.student_id, sub.subject_name;                    --Sort the result by student ID and subject name

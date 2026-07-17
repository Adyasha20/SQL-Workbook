-- Day 46
-- Problem: The Report
-- Platform: HackerRank

SELECT                                               --Starts selecting the required columns
    CASE                                             --If the student's grade is less than 8, display "NULL" instead of the student's name; otherwise display the student's name
        WHEN G.Grade < 8 THEN 'NULL'
        ELSE S.Name
    END,
    G.Grade,                                         --Selects the student's grade
    S.Marks                                          --Selects the student's marks
FROM Students S                                      --Retrieves data from the Students table and assigns it the alias S
JOIN Grades G                                        --Joins the Grades table and assigns it the alias G
ON S.Marks BETWEEN G.Min_Mark AND G.Max_Mark         --Matches each student's marks with the grade whose minimum and maximum marks include that score
ORDER BY                                             --Begins sorting the final result
    G.Grade DESC,                                    --Sorts the rows by grade in descending order (10 → 1)
    CASE                                             --For grades 8 or higher, sorts students alphabetically by their names
        WHEN G.Grade >= 8 THEN S.Name
    END ASC,
    CASE                                             --For grades below 8, sorts students by their marks in ascending order
        WHEN G.Grade < 8 THEN S.Marks
    END ASC;


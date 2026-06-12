-- Day 38
-- Problem: Exchange Seats
-- Platform: LeetCode

SELECT                                                                    --Start selecting columns
CASE                                                                      --Start conditional logic (like if-else)
    WHEN id % 2 = 1 AND id != (SELECT MAX(id) FROM Seat) THEN id + 1      --If id is odd and not the last row → change id to next (swap forward)
    WHEN id % 2 = 0 THEN id - 1                                           --If id is even → change id to previous (swap backward)
    ELSE id                                                               --If it’s the last row (odd total count) → keep id unchanged
END AS id,                                                                --End CASE and name the new column as id
student                                                                   --Select the student name
FROM Seat                                                                 --Use the Seat table
ORDER BY id;                                                              --Sort results by the new id

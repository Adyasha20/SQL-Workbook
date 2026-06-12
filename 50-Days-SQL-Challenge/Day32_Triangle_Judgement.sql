-- Day 32
-- Problem: Triangle Judgement
-- Platform: LeetCode
  
SELECT x, y, z,                    a                            --Select the three side lengths
CASE                                                            --Start a conditional check (like if-else in programming)
    WHEN x + y > z AND x + z > y AND y + z > x THEN 'Yes'       --Check if the three sides satisfy the triangle condition. Check if the three sides satisfy the triangle condition
    ELSE 'No'                                                   --If condition is false → it does not form a triangle
END AS triangle                                                 --End the condition and name the result column as triangle
FROM Triangle;                                                  --Use the Triangle table

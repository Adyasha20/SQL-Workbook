-- Day 21
-- Problem: Type of Triangle
-- Platform: HackerRank

SELECT                                                                     --Start selecting the output
CASE                                                                       --CASE works like an if-else statement
    WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'      --Check whether the three sides can form a triangle
    WHEN A = B AND B = C THEN 'Equilateral'                                --Check if all three sides are equal
    WHEN A = B OR B = C OR A = C THEN 'Isosceles'                          --Check if any two sides are equal
    ELSE 'Scalene'                                                         --If none of the above conditions are true, all sides are different
END                                                                        --End of the CASE statement
FROM TRIANGLES;                                                            --Read the values of A, B, and C from the TRIANGLES table

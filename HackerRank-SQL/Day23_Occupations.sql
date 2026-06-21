-- Day 23
-- Problem: Occupations
-- Platform: HackerRank

SELECT 
MAX(CASE WHEN Occupation = 'Doctor' THEN Name END) AS Doctor,                   --Show the person's name if their occupation is Doctor, ignore everyone else (NULL), and place the doctor's name in the Doctor column
MAX(CASE WHEN Occupation = 'Professor' THEN Name END) AS Professor,             --Show the person's name if their occupation is Professor, ignore everyone else (NULL), and place the professor's name in the Professor column
MAX(CASE WHEN Occupation = 'Singer' THEN Name END) AS Singer,                   --Show the person's name if their occupation is Singer, ignore everyone else (NULL), and place the singer's name in the Singer column
MAX(CASE WHEN Occupation = 'Actor' THEN Name END) AS Actor                      --Show the person's name if their occupation is Actor, ignore everyone else (NULL), and place the actor's name in the Actor column
FROM (
    SELECT Name,                                                                --Select the Name column
          Occupation,                                                           --Select the Occupation column
          ROW_NUMBER() OVER(PARTITION BY Occupation ORDER BY Name) AS rn        --ROW_NUMBER() -> Gives a unique number to each row. OVER(...) -> Tells SQL how to assign row numbers. 
                                                                                --  PARTITION BY Occupation -> Divide data into separate groups based on occupation. ORDER BY Name -> Sort names alphabetically inside each occupation
    FROM OCCUPATIONS                                                            --Read data from OCCUPATIONS table
) t                                                                             --Give the inner query a temporary name t
GROUP BY rn                                                                     --Combine rows having the same row number
ORDER BY rn;                                                                    --Show rows in row number order

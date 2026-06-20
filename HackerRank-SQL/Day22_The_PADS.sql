-- Day 22
-- Problem: The PADS
-- Platform: HackerRank

SELECT                                                   --Retrieve data from the table
CONCAT(Name, '(', SUBSTRING(Occupation,1,1), ')')        --CONCAT -> Combines multiple strings into one string. Name -> Take the person's name. '(' -> Add an opening bracket. 
                                                         --  SUBSTRING(Occupation,1,1) -> Extract the first character of the occupation(Syntax : SUBSTRING(column, start_position, length)). ')' -> Add a closing bracket
FROM OCCUPATIONS                                         --Use the OCCUPATIONS table
ORDER BY Name;                                           --Sort all names alphabetically

SELECT CONCAT('There are a total of ', COUNT(*), ' ', LOWER(Occupation), 's.')      --Build a sentence. 'There are a total of ' -> Fixed text. COUNT(*) -> Count the number of rows in each occupation group. ' ' -> Add a space.
                                                                                    --  LOWER(Occupation) -> Convert occupation name to lowercase. 's.' -> Add "s." to make it plural
FROM OCCUPATIONS                                                                    --Use the OCCUPATIONS table
GROUP BY Occupation                                                                 --Create one group for each occupation
ORDER BY COUNT(*), Occupation;                                                      --First sort by count (smallest to largest)

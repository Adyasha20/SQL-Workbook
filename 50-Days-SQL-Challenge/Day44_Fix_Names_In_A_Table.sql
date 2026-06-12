-- Day 44
-- Problem: Fix Names in a Table
-- Platform: LeetCode

SELECT user_id,                    --Select the user_id column
CONCAT(                            --Join different string parts together and rename the result as name
    UPPER(LEFT(name,1)),           --Take the first character of the name and convert it to uppercase. Extract the first letter from the name
    LOWER(SUBSTRING(name,2))       --Convert all characters from the second position onward to lowercase. Extract the name starting from the second character
) AS name 
FROM Users                         --Use the Users table
ORDER BY user_id;                  --Sort the output by user ID

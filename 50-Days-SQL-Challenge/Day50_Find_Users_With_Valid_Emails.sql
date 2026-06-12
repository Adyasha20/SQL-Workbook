-- Day 50
-- Problem: Find Users With Valid E-Mails
-- Platform: LeetCode

SELECT user_id,                                      --Select the user ID column
name,                                                --Select the user name column
mail                                                 --Select the email column
FROM Users                                           --Use the Users table
WHERE REGEXP_LIKE(                                   --Filter only emails matching the required pattern
    mail,                                            --Check the mail column value
    '^[A-Za-z][A-Za-z0-9._-]*@leetcode\\.com$',      --Define the valid email format pattern. The pattern means the email must start with a letter, can then contain letters, numbers, ., _, or -, and must end exactly with @leetcode.com
    'c'                                              --Make regex matching case-sensitive
);

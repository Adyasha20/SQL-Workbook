-- Day 46
-- Problem: Delete Duplicate Emails
-- Platform: LeetCode

DELETE p1                      --Delete rows from the table alias p1
FROM Person p1, Person p2      --Create two copies of the Person table: p1, p2. This is called a self join
WHERE p1.email = p2.email      --Find rows where both tables have the same email
AND p1.id > p2.id;             --Compare IDs and keep the smaller ID while deleting the larger ID

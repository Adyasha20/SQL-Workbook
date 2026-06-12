-- Day 4
-- Problem: Article Views I
-- Platform: LeetCode

SELECT DISTINCT author_id AS id   --SELECT DISTINCT : removes duplicate authors
FROM Views 
WHERE author_id = viewer_id 
ORDER BY id;                      --sort results in ascending order

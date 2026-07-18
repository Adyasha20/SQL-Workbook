-- Day 47
-- Problem: Top Competitors
-- Platform: HackerRank

SELECT H.hacker_id, H.name                                    --Select the hacker's ID and name to display in the output
FROM Hackers H                                                --Use the Hackers table as the main table and give it the alias H
JOIN Submissions S                                            --Join the Submissions table with the Hackers table
ON H.hacker_id = S.hacker_id                                  --Match each hacker with the submissions they have made using hacker_id
JOIN Challenges C                                             --Join the Challenges table to get details about each challenge
ON S.challenge_id = C.challenge_id                            --Match each submission with its corresponding challenge using challenge_id
JOIN Difficulty D                                             --Join the Difficulty table to get the maximum score for each difficulty level
ON C.difficulty_level = D.difficulty_level                    --Match each challenge with its corresponding difficulty level
WHERE S.score = D.score                                       --Keep only those submissions where the hacker scored the maximum possible score (full score)
GROUP BY H.hacker_id, H.name                                  --Group all full-score submissions for each hacker together
HAVING COUNT(S.challenge_id) > 1                              --Keep only those hackers who got full scores in more than one challenge
ORDER BY COUNT(S.challenge_id) DESC, H.hacker_id ASC;         --Sort the hackers by the number of full-score challenges in descending order, and if tied, by hacker_id in ascending order

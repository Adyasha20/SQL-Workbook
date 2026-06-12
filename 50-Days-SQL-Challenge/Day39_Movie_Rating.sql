-- Day 39
-- Problem: Movie Rating
-- Platform: LeetCode

(
  SELECT u.name AS results                                    --Select the user name and rename the column as results
  FROM Users u                                                --Use the Users table and give it alias u
  JOIN MovieRating mr                                         --Join the MovieRating table
  ON u.user_id = mr.user_id                                   --Match users with their movie ratings
  GROUP BY u.user_id , u.name                                 --Group all ratings by each user
  ORDER BY COUNT(*) DESC , u.name ASC                         --Sort by: highest number of ratings first. If tied → smaller name alphabetically first
  LIMIT 1                                                     --Return only the top user
)
UNION ALL                                                     --Combine the result of first query and second query
(
  SELECT m.title AS results                                   --Select the movie title and rename column as results
  FROM Movies m                                               --Use the Movies table with alias m
  JOIN MovieRating mr                                         --Join MovieRating table
  ON m.movie_id = mr.movie_id                                 --Match movies with their ratings
  WHERE mr.created_at BETWEEN '2020-02-01' AND '2020-02-29'   --Keep only ratings given in February 2020
  GROUP BY m.movie_id, m.title                                --Group ratings by each movie
  ORDER BY AVG(mr.rating) DESC, m.title ASC                   --Sort by: highest average rating first. If tied → smaller movie title first
  LIMIT 1                                                     --Return only the top movie
); 

-- 1.Show all users.
-- 2.Show all movies.
-- 3.Show all watch history.
-- 4.Show only premium users.
-- 5.Show movies with rating above 9.0
-- 6.Count total users.
-- 7.Count total movies.
-- 8.Show Tamil movies.
-- 9.Show Action movies.
-- 10.Show Indian users.

-- 11.Count movies by genre.
-- 12.Count movies by language.
-- 13.Count users by plan type.
-- 14.Show top 10 highest rated movies.
-- 15.Show latest 10 movies.
-- 16.Find average rating of all movies.
-- 17.Find longest and shortest movie duration.
-- 18.Show completed watches.
-- 19.Show how many movies each user watched.
-- 20.Show top 5 most viewed movies.

-- 21.Show user name, movie title and watch date.
-- 22.Show users who completed watching.
-- 23.Show average rating by genre.
-- 24.Count users by country.
-- 25.Show movies that were never watched.
-- 26.Show total watches by plan type.
-- 27.Show languages with average rating above 8.
-- 28.Show movies released between 2020-2024.
-- 29.Show users who watched more than 5 movies.
-- 30.Show most viewed genre.


SELECT * FROM users;

SELECT * FROM movies;

SELECT * FROM watch_history;

SELECT user_name, plan_type FROM users WHERE plan_type='Premium';

SELECT title, rating FROM movies WHERE rating > 9.0;

SELECT COUNT(*) AS total_users FROM users;

SELECT COUNT(*) AS total_movies FROM movies;

SELECT * FROM movies WHERE language='Tamil';

SELECT * FROM movies WHERE genre='Action';

SELECT * FROM users WHERE country='India';

SELECT genre, COUNT(*) AS movie_count FROM movies GROUP BY genre;

SELECT language, COUNT(*) FROM movies GROUP BY language ORDER BY COUNT(*) DESC;

SELECT plan_type, COUNT(*) FROM users GROUP BY plan_type;

SELECT * FROM movies ORDER BY rating DESC LIMIT 10;

SELECT * FROM movies ORDER BY release_year DESC LIMIT 10;

SELECT AVG(rating) AS avg_rating FROM movies;

SELECT MAX(duration_mins), MIN(duration_mins) FROM movies;

SELECT* FROM watch_history WHERE completed='Yes';

SELECT user_id, COUNT(*) AS watched FROM watch_history GROUP BY user_id;

SELECT movie_id, COUNT(*) AS views FROM watch_history GROUP BY
movie_id ORDER BY views DESC LIMIT 5;

SELECT u.user_name, m.title, w.watch_date FROM users u JOIN
watch_history w ON u.user_id=w.user_id JOIN movies m ON w.movie_id=m.movie_id;

SELECT u.user_name, m.title FROM users u JOIN watch_history w 
ON u.user_id=w.user_id JOIN movies m ON m.movie_id=w.movie_id WHERE w.completed='Yes';

SELECT genre, AVG(rating) AS avg_rating FROM movies GROUP BY genre ORDER BY avg_rating DESC;

SELECT country, COUNT(*) AS users FROM users GROUP BY country;

SELECT title FROM movies WHERE movie_id NOT IN (SELECT movie_id FROM watch_history);

SELECT u.plan_type, COUNT(w.watch_id) AS total_watches FROM
users u LEFT JOIN watch_history w ON u.user_id=w.user_id GROUP BY u.plan_type;

SELECT language, AVG(rating) FROM movies GROUP BY language HAVING AVG(rating) > 8.0;

SELECT * FROM movies WHERE release_year BETWEEN 2020 AND 2024;

SELECT user_name FROM users WHERE user_id IN (SELECT user_id FROM watch_history
GROUP BY user_id HAVING COUNT(*) > 5);

SELECT m.genre, COUNT(w.watch_id) AS total_views FROM movies m JOIN
watch_history w ON m.movie_id=w.movie_id GROUP BY m.genre ORDER BY total_views DESC;
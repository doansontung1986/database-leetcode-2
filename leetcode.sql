-- 1. Big Countries (https://leetcode.com/problems/big-countries/)
# Write your MySQL query statement below
SELECT name, population, area
FROM World
WHERE area >= 3000000 OR population >= 25000000;

-- 2. The Latest Login in 2020 (https://leetcode.com/problems/the-latest-login-in-2020/description/)
# Write your MySQL query statement below
SELECT user_id, MAX(time_stamp) as last_stamp
FROM Logins
WHERE YEAR(time_stamp) = '2020'
GROUP BY user_id;

-- 3. Not Boring Movies (https://leetcode.com/problems/not-boring-movies/description/)
# Write your MySQL query statement below
SELECT * FROM Cinema
WHERE id % 2 != 0 AND description != 'boring'
ORDER BY rating DESC;

-- 4. Triangle Judgement (https://leetcode.com/problems/triangle-judgement/)
# Write your MySQL query statement below
SELECT x, y, z, 
    CASE
        WHEN (x + y > z) AND (x + z > y) AND (y + z > x) THEN "Yes"
        ELSE "No"
    END as triangle
FROM Triangle;

-- 5. Find Followers Count (https://leetcode.com/problems/find-followers-count/description/)
# Write your MySQL query statement below
SELECT user_id, COUNT(follower_id) as followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id;

-- 6. Actors and Directors Who Cooperated At Least Three Times
# Write your MySQL query statement below
SELECT actor_id, director_id
FROM ActorDirector
GROUP BY actor_id, director_id
HAVING COUNT(timestamp) >= 3;
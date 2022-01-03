SQL extra project

SELECT title, score
FROM hacker_news
ORDER BY score DESC
LIMIT 5;

SELECT SUM(score)
FROM hacker_news;

SELECT user, SUM(score) AS user_score
FROM hacker_news
GROUP BY user
HAVING user_score > 200;

SELECT (309.0 + 304.0 + 298.0 + 517.0 ) * 100.0 / SUM(score) AS rule
FROM hacker_news;

SELECT COUNT(user), url
FROM hacker_news
WHERE url LIKE 'https://www.youtube.com/watch?v=dQw4w9WgXcQ'
GROUP BY user;

SELECT 
  CASE
    WHEN url LIKE '%github.com%' THEN 'GitHub'
    WHEN url LIKE '%medium.com%' THEN 'Medium'
    WHEN url LIKE '%newyork%' THEN 'New York Times'
    ELSE 'Others'
  END AS 'Source'
FROM hacker_news; 


SELECT COUNT(url),
  CASE
    WHEN url LIKE '%github.com%' THEN 'GitHub'
    WHEN url LIKE '%medium.com%' THEN 'Medium'
    WHEN url LIKE '%newyork%' THEN 'New York Times'
    ELSE 'Others'
  END AS 'Source'
FROM hacker_news
WHERE Source NOT LIKE 'Others'
GROUP BY Source; 

SELECT timestamp
FROM hacker_news
LIMIT 10;

SELECT score, timestamp
FROM hacker_news
WHERE score IS NOT NULL
GROUP BY timestamp
ORDER BY score DESC;

SELECT timestamp,
   strftime('%H', timestamp)
FROM hacker_news
GROUP BY 1
LIMIT 20;

SELECT strftime('%H', timestamp),
AVG(score),COUNT(title)
FROM hacker_news
GROUP BY 1
ORDER BY 1 DESC;

SELECT strftime('%H', timestamp) AS hour,
ROUND(AVG(score),1) AS averageScore,COUNT(title) AS numTitles
FROM hacker_news
GROUP BY 1
ORDER BY 2 DESC;







-- Comments in SQL Start with dash-dash --
-- 1.
SELECT app_name FROM analytics WHERE id = 1880;
-- 2.
SELECT app_name, id FROM analytics WHERE last_updated = '2018-08-01';
-- 3.
SELECT category, COUNT(*) AS counter FROM analytics
GROUP BY category;
-- 4.
SELECT app_name, reviews FROM analytics LIMIT 5;
-- 5.
SELECT app_name FROM analytics
WHERE rating >= 4.8
ORDER BY reviews DESC
LIMIT 1;
-- 6.
SELECT category, AVG(rating) FROM analytics
GROUP BY category
ORDER BY AVG(rating) DESC;
-- 7.
SELECT app_name, price, rating FROM analytics
WHERE rating < 3
ORDER BY price DESC
LIMIT 1;
-- 8.
SELECT * FROM analytics
WHERE min_installs <= 50 AND rating IS NOT NULL
ORDER BY rating DESC;
-- 9.
SELECT app_name FROM analytics
WHERE rating < 3 AND reviews >= 10000;
-- 10.
SELECT app_name, price, reviews FROM analytics
WHERE price BETWEEN 0.1 and 1
ORDER BY reviews DESC
LIMIT 10;
-- 11.
SELECT app_name FROM analytics
WHERE last_updated = (SELECT MIN(last_updated) FROM analytics);
-- 12.
SELECT app_name, price from analytics
WHERE price = (SELECT MAX(price) FROM analytics);
-- 13.
SELECT SUM(reviews) AS "Total Reviews" FROM analytics;
-- 14.
SELECT category FROM analytics
GROUP BY category
HAVING count(*) > 300;
-- 15. 
SELECT app_name, reviews, min_installs, min_installs/reviews AS proportion FROM analytics
WHERE min_installs >= 100000
ORDER BY proportion DESC
LIMIT 1;
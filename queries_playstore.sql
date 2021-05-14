-- Comments in SQL Start with dash-dash --

--Find the app with an ID of 1880 --
SELECT * FROM analytics WHERE id =1880

--­Find the ID and app name for all apps that were last updated on August 01, 2018 --
SELECT id, app_name FROM analytics WHERE last_updated = '2018-08-01'

--Count the number of apps in each category, e.g. “Family | 1972”.--
SELECT category ,COUNT(category) FROM analytics GROUP BY category

--Find the top 5 most-reviewed apps and the number of reviews for each.--
SELECT app_name,reviews FROM analytics LIMIT 5

--Find the app that has the most reviews with a rating greater than equal to 4.8. --
SELECT app_name,reviews,rating FROM analytics WHERE rating >= 4.8

--Find the average rating for each category ordered by the highest rated to lowest rated.--
SELECT AVG(rating) AS rate,category FROM analytics GROUP BY category ORDER BY rate desc

--Find the name, price, and rating of the most expensive app with a rating that’s less than 3.--
SELECT MAX(price) AS max_price, app_name, rating FROM analytics WHERE rating <3

--Find all apps with a min install not exceeding 50, that have a rating. Order your results by highest rated first.--
SELECT min_installs,app_name,rating FROM analytics WHERE min_installs <= 50 AND rating IS NOT NULL ORDER BY rating DESC

--Find the names of all apps that are rated less than 3 with at least 10000 reviews.--
SELECT app_name FROM analytics WHERE rating < 3 AND reviews >= 10000

--Find the top 10 most-reviewed apps that cost between 10 cents and a dollar.--
SELECT app_name,price FROM analytics WHERE price BETWEEN .10 AND 1.00 LIMIT 10

--Find the most expensive app--
SELECT app_name,price FROM analytics WHERE price = (SELECT MAX(pric)e) FROM analytics

--Count all the reviews in the Google Play Store--
SELECT COUNT(reviews) FROM analytics

--Find all the categories that have more than 300 apps in them--
SELECT category ,COUNT(category) AS cat_count FROM analytics GROUP BY category HAVING COUNT(category) > 300







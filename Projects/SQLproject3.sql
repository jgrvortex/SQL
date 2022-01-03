


SELECT *
FROM startups;

SELECT COUNT(name)
FROM startups;

SELECT SUM(valuation) AS total_value
FROM startups;

SELECT MAX(raised)
FROM startups;

SELECT MAX(raised)
FROM startups
WHERE stage LIKE 'seed';

SELECT MIN(founded)
FROM startups;

SELECT AVG(valuation)
FROM startups;

SELECT AVG(valuation)
FROM startups
GROUP BY category;

SELECT ROUND(AVG(valuation),2)
FROM startups
GROUP BY category;

SELECT ROUND(AVG(valuation),2) AS averages
FROM startups
GROUP BY category
ORDER BY averages DESC;

SELECT category, COUNT(name)
FROM startups
GROUP BY category;

SELECT category AS cat, COUNT(name) AS num
FROM startups
GROUP BY category
HAVING num > 3
ORDER BY num DESC;

SELECT location, AVG(employees) AS size
FROM startups
GROUP BY location;

SELECT location, AVG(employees) AS size
FROM startups
GROUP BY location
HAVING size > 500;










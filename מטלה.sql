SELECT co.name AS countries, COUNT(ci.CountryCode) AS Number_Of_Cities
FROM country AS co
LEFT JOIN city AS ci ON ci.CountryCode = co.code
GROUP BY countries
HAVING COUNT(ci.CountryCode) > 5;
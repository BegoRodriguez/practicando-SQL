SELECT Name, Population
FROM country;

SELECT Name, Population
FROM country
WHERE Population > (
  SELECT AVG(Population) 
  FROM country);
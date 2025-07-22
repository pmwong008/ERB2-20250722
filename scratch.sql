SELECT
	c.Name AS city_name,
    c.District AS city_district,
    co.Name AS country_name,
    co.Region AS country_region
FROM
	world.city as c,
    world.country as co
WHERE
	c.CountryCode = co.Code
    AND
    co.Continent = 'Asia'
    AND
    c.Name LIKE 'Du%'

***********

SELECT
	c.Name AS city_name,
    c.District AS city_district,
    ROUND((c.Population/co.Population)*100, 2) AS city_population_percentage,
    co.Name AS country_name,
    co.Region AS country_region
FROM
	world.city as c
    INNER JOIN
    world.country as co
    ON
    c.CountryCode = co.Code
WHERE
    co.Continent = 'Asia'
    AND
    c.Name LIKE 'Du%'

*********

City Population by Country
Language used percentage by continent
Countries average population per city
City with Name start with "Hon" with country have official language
Most used language in the world
Which country doesn't have city

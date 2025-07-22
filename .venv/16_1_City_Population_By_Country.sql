SELECT 
    country.Name AS CountryName,
    city.Name AS CityName,
    city.Population
FROM
	city
	LEFT JOIN
    country
    ON
    city.CountryCode = country.Code
ORDER BY
	country.Name,
    city.Population DESC
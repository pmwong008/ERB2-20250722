SELECT
	c.Name,
    c.Population,
    c.CountryCode,
    c.Population = max_c.Max_Pop
FROM
	world.city as c
    INNER JOIN
    (
    SELECT
		CountryCode,
		MAX(Population) AS Max_Pop
	FROM
		world.city
	GROUP BY
		CountryCode
    ) as max_c
    ON
    c.CountryCode = max_c.CountryCode
SELECT
    o.CONTINENT,
    FLOOR(AVG(i.POPULATION))
FROM
    CITY AS i
    JOIN COUNTRY AS o ON i.COUNTRYCODE = o.CODE
GROUP BY
    o.CONTINENT;
SELECT
    i.NAME
FROM
    CITY AS i
    JOIN COUNTRY AS o ON i.COUNTRYCODE = o.CODE
WHERE
    o.CONTINENT = 'Africa';
(
    SELECT
        city,
        LENGTH (city)
    FROM
        (
            SELECT DISTINCT
                city,
                LENGTH (city) AS city_length
            FROM
                station
            ORDER BY
                city_length ASC,
                city ASC
        ) AS temp
    LIMIT
        1
)
UNION
(
    SELECT
        city,
        LENGTH (city)
    FROM
        (
            SELECT DISTINCT
                city,
                LENGTH (city) AS city_length
            FROM
                station
            ORDER BY
                city_length DESC,
                city ASC
        ) AS temp
    LIMIT
        1
);
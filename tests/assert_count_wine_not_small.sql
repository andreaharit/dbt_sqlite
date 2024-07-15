-- Remember that tests assert failure, so if we have wines with less than 50 rates, it will fail
SELECT id, name, ratings_average, ratings_count FROM {{ ref("top_wines")}}
WHERE ratings_count < 50
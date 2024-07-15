SELECT T.name wine, R.country_code code FROM regions R
JOIN {{ ref("top_wines") }} T on T.region_id = R.id

select id, name, ratings_average, ratings_count, region_id, winery_id FROM wines
ORDER BY ratings_average DESC, ratings_count DESC
LIMIT 50



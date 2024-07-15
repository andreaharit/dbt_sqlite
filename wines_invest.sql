/*  Problem: I want to invest in good quality wines where sending them to users can be cheap.
    So I want to invest in the top wineries, with good rated wines that are country with wine lovers.
    Approach:
    Which wineries have a top 50 rated wine and are also located in one of the
    top 5 countries in terms of user count? */

{{ materialized}}
SELECT DISTINCT R.wine, R.code 
FROM {{ ref ("top_regions") }} R
JOIN  {{ ref("top_countries") }} TC ON R.code = TC.code
ORDER BY R.code

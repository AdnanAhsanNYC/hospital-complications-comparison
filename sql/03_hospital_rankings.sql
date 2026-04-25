SELECT
    facility_id,
    facility_name,
    city,
    state,
    COUNT(DISTINCT measure_id)          AS measures_tracked,
    ROUND(AVG(score), 2)               AS avg_score
FROM hospital_measures
GROUP BY facility_id, facility_name, city, state
HAVING measures_tracked >= 5
ORDER BY avg_score ASC
LIMIT 50
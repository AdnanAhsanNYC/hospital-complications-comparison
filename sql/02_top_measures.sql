SELECT
    measure_id,
    measure_name,
    COUNT(*)                            AS hospital_count,
    ROUND(AVG(score), 2)               AS avg_score
FROM hospital_measures
GROUP BY measure_id, measure_name
ORDER BY avg_score DESC
LIMIT 15
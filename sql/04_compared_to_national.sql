SELECT
    compared_to_national,
    COUNT(*)                            AS record_count,
    ROUND(AVG(score), 2)               AS avg_score
FROM hospital_measures
GROUP BY compared_to_national
ORDER BY record_count DESC
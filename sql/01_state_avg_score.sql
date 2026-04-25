SELECT
    state,
    COUNT(DISTINCT facility_id)         AS hospital_count,
    ROUND(AVG(score), 2)                AS avg_score,
    ROUND(AVG(lower_estimate), 2)       AS avg_lower,
    ROUND(AVG(higher_estimate), 2)      AS avg_higher
FROM hospital_measures
GROUP BY state
ORDER BY avg_score DESC
-- Average stress level
SELECT AVG(stress_level) AS avg_stress
FROM StressLevelDataset;

-- Average stress by study load
SELECT study_load,
       AVG(stress_level) AS avg_stress
FROM StressLevelDataset
GROUP BY study_load
ORDER BY study_load;

-- Average stress by sleep quality
SELECT sleep_quality,
       AVG(stress_level) AS avg_stress
FROM StressLevelDataset
GROUP BY sleep_quality
ORDER BY sleep_quality;

-- Top stress factors
SELECT
    AVG(anxiety_level) AS anxiety,
    AVG(depression) AS depression,
    AVG(peer_pressure) AS peer_pressure,
    AVG(future_career_concerns) AS career_concerns
FROM StressLevelDataset;

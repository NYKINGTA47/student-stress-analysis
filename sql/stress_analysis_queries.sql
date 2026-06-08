-- Student Stress Analysis Project
-- Author: Tahmid Adib

--------------------------------------------------
-- 1. Average Stress Level
--------------------------------------------------

SELECT AVG(stress_level) avg_stress
FROM StressLevelDataset;

--------------------------------------------------
-- 2. Average Stress by Study Load
--------------------------------------------------

SELECT study_load,
       AVG(stress_level) avg_stress
FROM StressLevelDataset
GROUP BY study_load
ORDER BY avg_stress DESC;

--------------------------------------------------
-- 3. Average Stress by Sleep Quality
--------------------------------------------------

SELECT sleep_quality,
       AVG(stress_level) avg_stress
FROM StressLevelDataset
GROUP BY sleep_quality
ORDER BY sleep_quality;

--------------------------------------------------
-- 4. Average Stress by Anxiety Level
--------------------------------------------------

SELECT anxiety_level,
       AVG(stress_level) avg_stress
FROM StressLevelDataset
GROUP BY anxiety_level
ORDER BY anxiety_level;

--------------------------------------------------
-- 5. Average Stress by Future Career Concerns
--------------------------------------------------

SELECT future_career_concerns,
       AVG(stress_level) avg_stress
FROM StressLevelDataset
GROUP BY future_career_concerns
ORDER BY future_career_concerns;

--------------------------------------------------
-- 6. Average Stress by Peer Pressure
--------------------------------------------------

SELECT peer_pressure,
       AVG(stress_level) avg_stress
FROM StressLevelDataset
GROUP BY peer_pressure
ORDER BY peer_pressure;

--------------------------------------------------
-- 7. Average Stress by Social Support
--------------------------------------------------

SELECT social_support,
       AVG(stress_level) avg_stress
FROM StressLevelDataset
GROUP BY social_support
ORDER BY social_support;

--------------------------------------------------
-- 8. Average Stress by Academic Performance
--------------------------------------------------

SELECT academic_performance,
       AVG(stress_level) avg_stress
FROM StressLevelDataset
GROUP BY academic_performance
ORDER BY academic_performance;

--------------------------------------------------
-- 9. Stress Distribution
--------------------------------------------------

SELECT stress_level,
       COUNT(*) total_students
FROM StressLevelDataset
GROUP BY stress_level
ORDER BY stress_level;

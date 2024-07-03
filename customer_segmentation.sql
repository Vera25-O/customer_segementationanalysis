SELECT * FROM my_projects.customer_segmentation_data;
-- Creating age_brackets
SELECT 
CASE
WHEN age <= 18 THEN "18 & Below"
WHEN age <= 29 THEN "20-29"
WHEN age <= 39 THEN "30-39"
WHEN age <= 49 THEN "40-49"
WHEN age <= 59 THEN "50-59"
WHEN age <= 69 THEN "60-69"
ELSE "Above"
END AS age_brackets,
COUNT(*) AS total_count,
SUM(COUNT(*)) OVER () AS total_sum
FROM customer_segmentation_data
GROUP BY age_brackets ASC;

-- Creating income range
SELECT
CASE
WHEN income <= 50000 THEN "30K-50K"
WHEN income <= 100000 THEN "51K-100K"
ELSE "100K+"
END AS income_range,
COUNT(*) AS total_count
FROM customer_segmentation_data
GROUP BY income_range;


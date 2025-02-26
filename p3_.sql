SELECT
co.name as country_name, 
co.code as country_code,
AVG(cases.Number_rabies) as avg_number_rabies,
MIN(cases.Number_rabies) as min_number_rabies,
MAX(cases.Number_rabies) as max_number_rabies, 
SUM(cases.Number_rabies) as total_number_rabies
FROM infectious_cases cases
JOIN country co ON co.id =  cases.country_id
WHERE cases.Number_rabies IS NOT NULL
GROUP BY cases.country_id
ORDER BY avg_number_rabies DESC
LIMIT 10
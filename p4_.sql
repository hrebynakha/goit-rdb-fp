-- ALTER TABLE infectious_cases
-- modify Year YEAR NOT NULL;


SELECT 
DATE(CONCAT(Year, '-01-01')) as date_case,
CURDATE()  as date_now,
YEAR(CURDATE())- Year as years_diff
FROM infectious_cases;

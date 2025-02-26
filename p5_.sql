DROP FUNCTION IF EXISTS DiffYear;
DELIMITER //
CREATE FUNCTION DiffYear(input_year YEAR)
RETURNS INT
DETERMINISTIC 
NO SQL
BEGIN
    DECLARE result INT;
    SET result =  YEAR(CURDATE())- YEAR(CONCAT(input_year, '-01-01'));
    RETURN result;
END //
DELIMITER ;
SELECT 
DATE(CONCAT(Year, '-01-01')) as date_case,CURDATE()  as date_now, DiffYear(Year) as years_diff FROM infectious_cases;
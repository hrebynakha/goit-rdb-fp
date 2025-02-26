-- CREATE table country (
-- 	id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(255) NOT NULL,
--     code VARCHAR(64) NULL
-- )


-- INSERT INTO country (name, code)
-- SELECT distinct Entity, code FROM infectious_cases;

-- ALTER table infectious_cases
-- ADD column country_id INT,
-- ADD CONSTRAINT fk_infection_cases_country FOREIGN KEY (country_id) REFERENCES country(id) 
-- ON DELETE CASCADE
-- ON UPDATE CASCADE;

-- SET SQL_SAFE_UPDATES = 0;

-- UPDATE infectious_cases cases
-- JOIN country co ON cases.Entity = co.name
-- SET cases.country_id = co.id
-- WHERE cases.country_id IS NULL ;

-- SET SQL_SAFE_UPDATES = 1;

-- ALTER TABLE infectious_cases
-- DROP COLUMN Entity,
-- DROP COLUMN Code;

 SELECT COUNT(*) FROM infectious_cases



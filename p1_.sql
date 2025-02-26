-- CREATE SCHEMA `pandemic`;
-- USE `pandemic`;
-- SET SQL_SAFE_UPDATES = 0;
-- UPDATE infectious_cases
-- SET
-- 	Entity = NULLIF(Entity, ""),
--     Code = NULLIF(Code, ""),
--     Number_yaws = NULLIF(Number_yaws, ""),
--     polio_cases = NULLIF(polio_cases, ""),
--     cases_guinea_worm = NULLIF(cases_guinea_worm, ""),
--     Number_rabies = NULLIF(Number_rabies, ""),
--     Number_malaria = NULLIF(Number_malaria, ""),
--     Number_hiv = NULLIF(Number_hiv, ""),
--     Number_tuberculosis = NULLIF(Number_tuberculosis, ""),
--     Number_smallpox = NULLIF(Number_smallpox, ""),
--     Number_cholera_cases = NULLIF(Number_cholera_cases, "");
--     
-- SET SQL_SAFE_UPDATES = 1;

ALTER TABLE infectious_cases
modify Entity varchar(255) NOT NULL,
modify Code varchar(64) NULL,
modify Number_yaws float NULL,
modify polio_cases int NULL,
modify cases_guinea_worm int NULL,
modify Number_rabies float NULL,
modify Number_malaria float NULL,
modify Number_hiv float NULL,
modify Number_tuberculosis float NULL,
modify Number_smallpox float NULL,
modify Number_cholera_cases float NULL ;
